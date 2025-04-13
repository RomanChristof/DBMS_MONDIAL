import psycopg2
from pathlib import Path
import os
from dotenv import load_dotenv

# Output directory
OUTPUT_DIR = Path("scripts/cassandra")
load_dotenv()

# Escape quotes for CQL strings
def escape_quotes(s):
    return s.replace("'", "''") if s else ''

# Cassandra CREATE TABLE definitions
TABLES = {
    "city_by_country": """
CREATE TABLE IF NOT EXISTS city_by_country (
    country_code TEXT,
    country_name TEXT,
    city_name TEXT,
    province TEXT,
    population DECIMAL,
    latitude DECIMAL,
    longitude DECIMAL,
    elevation DECIMAL,
    PRIMARY KEY ((country_code), city_name, province)
);""",
    "organization_membership_by_country": """
CREATE TABLE IF NOT EXISTS organization_membership_by_country (
    country_code TEXT,
    country_name TEXT,
    organization_abbr TEXT,
    organization_name TEXT,
    membership_type TEXT,
    established DATE,
    org_city TEXT,
    org_province TEXT,
    PRIMARY KEY ((country_code), organization_abbr)
);""",
    "political_economy_by_country": """
CREATE TABLE IF NOT EXISTS political_economy_by_country (
    country_code TEXT,
    GDP_agriculture DECIMAL,
    GDP_service DECIMAL,
    GDP_industry DECIMAL,
    inflation DECIMAL,
    unemployment DECIMAL,
    dependent TEXT,
    independence TEXT,
    wasdependent TEXT,
    government TEXT,
    PRIMARY KEY (country_code)
);"""
}

# Connect to PostgreSQL
def connect_to_postgres():
    return psycopg2.connect(
        host="localhost",
        port=5434,
        dbname="dbms",
        user=os.environ['PG_USER'],
        password=os.environ['PG_PASSWORD']
    )

# Fetch enriched city data
def fetch_city_data(cursor):
    cursor.execute("""
    SELECT c.name AS city_name, c.country AS country_code, co.name AS country_name,
           c.province, c.population, c.latitude, c.longitude, c.elevation
    FROM city c
    JOIN country co ON c.country = co.code;
    """)
    return cursor.fetchall()

# Fetch enriched organization membership data
def fetch_organization_membership(cursor):
    cursor.execute("""
    SELECT m.country, co.name AS country_name, m.organization, o.name, m.type,
           o.established, o.city, o.province
    FROM isMember m
    JOIN organization o ON m.organization = o.abbreviation
    JOIN country co ON m.country = co.code;
    """)
    return cursor.fetchall()

# Fetch merged political + economy data
def fetch_political_economy(cursor):
    cursor.execute("""
    SELECT e.country, e.agriculture, e.service, e.industry, e.inflation, e.unemployment,
           p.dependent, p.independence, p.wasdependent, p.government
    FROM economy e
    JOIN politics p ON e.country = p.country;
    """)
    return cursor.fetchall()

# Write CREATE and INSERTs to CQL
def write_cql_file(table_name, create_stmt, inserts):
    path = OUTPUT_DIR / f"{table_name}.cql"
    with open(path, "w", encoding="utf-8") as f:
        f.write("CREATE KEYSPACE IF NOT EXISTS mondial WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};\n")
        f.write("USE mondial;\n\n")
        f.write(create_stmt.strip() + "\n\n")
        for ins in inserts:
            f.write(ins + "\n")
    print(f"Wrote: {path}")

def main():
    conn = connect_to_postgres()
    cursor = conn.cursor()

    # Enrich + export city_by_country
    city_rows = fetch_city_data(cursor)
    city_inserts = [
        f"INSERT INTO city_by_country (country_code, country_name, city_name, province, population, latitude, longitude, elevation) "
        f"VALUES ('{escape_quotes(r[1])}', '{escape_quotes(r[2])}', '{escape_quotes(r[0])}', '{escape_quotes(r[3])}', {r[4]}, {r[5]}, {r[6]}, {r[7]});"
        for r in city_rows
    ]
    write_cql_file("city_by_country", TABLES["city_by_country"], city_inserts)

    # Enrich + export organization_membership_by_country
    org_rows = fetch_organization_membership(cursor)
    org_inserts = [
        f"INSERT INTO organization_membership_by_country (country_code, country_name, organization_abbr, organization_name, membership_type, established, org_city, org_province) "
        f"VALUES ('{escape_quotes(r[0])}', '{escape_quotes(r[1])}', '{escape_quotes(r[2])}', '{escape_quotes(r[3])}', '{escape_quotes(r[4])}', "
        f"'{r[5].strftime('%Y-%m-%d') if r[5] else 'null'}', '{escape_quotes(r[6])}', '{escape_quotes(r[7])}');"
        for r in org_rows
    ]

    write_cql_file("organization_membership_by_country", TABLES["organization_membership_by_country"], org_inserts)

    # Enrich + export political_economy_by_country
    pol_econ_rows = fetch_political_economy(cursor)
    pol_econ_inserts = [
        f"INSERT INTO political_economy_by_country (country_code, GDP_agriculture, GDP_service, GDP_industry, inflation, unemployment, dependent, independence, wasdependent, government) "
        f"VALUES ('{escape_quotes(r[0])}', {r[1]}, {r[2]}, {r[3]}, {r[4]}, {r[5]}, '{escape_quotes(r[6])}', "
        f"'{r[7].strftime('%Y-%m-%d') if r[7] else 'null'}', '{escape_quotes(r[8])}', '{escape_quotes(r[9])}');"
        for r in pol_econ_rows
    ]
    write_cql_file("political_economy_by_country", TABLES["political_economy_by_country"], pol_econ_inserts)

    cursor.close()
    conn.close()

if __name__ == "__main__":
    main()