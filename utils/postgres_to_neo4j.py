import psycopg2
import csv
from decimal import Decimal

# Verbindung zur PostgreSQL-Datenbank
connection = psycopg2.connect(
    dbname="postgres",
    user="postgres",
    password="postgres",
    host="localhost",
    port="5432"
)
cursor = connection.cursor()

# Liste aller Tabellen, die exportiert werden sollen
table_names = [
    "country", "city", "province", "economy", "population", "politics",
    "religion", "ethnicgroup", "spoken", "language", "countrypops",
    "countryothername", "countrylocalname", "provpops", "provinceothername",
    "provincelocalname", "citypops", "cityothername", "citylocalname",
    "continent", "borders", "encompasses", "organization", "ismember",
    "mountain", "desert", "island", "lake", "sea", "river", "riverthrough",
    "geo_mountain", "geo_desert", "geo_island", "geo_river", "geo_sea",
    "geo_lake", "geo_source", "geo_estuary", "mergeswith", "located",
    "locatedon", "islandin", "mountainonisland", "lakeonisland",
    "riveronisland", "airport"
]


for table in table_names:

    # load table from postgres
    try:
        cursor.execute(f"SELECT * FROM {table};")
        column_names = [col_desc[0] for col_desc in cursor.description]
        result_rows = cursor.fetchall()

        dict_rows = [dict(zip(column_names, row)) for row in result_rows]

        # convert deciaml values
        for entry in dict_rows:
            for key, val in entry.items():
                if isinstance(val, Decimal):
                    entry[key] = int(val) if val == int(val) else float(val)

        # remove none values
        for entry in dict_rows:
            keys_to_delete = [k for k, v in entry.items() if v is None]
            for k in keys_to_delete:
                del entry[k]

        dict_rows = [entry for entry in dict_rows if entry]

        # save as csv file
        if dict_rows:
            csv_headers = dict_rows[0].keys()
            with open(f"{table}.csv", "w", newline='', encoding='utf-8') as csv_file:
                writer = csv.DictWriter(csv_file, fieldnames=csv_headers)
                writer.writeheader()
                writer.writerows(dict_rows)
        else:
            print(f"No data in '{table}'")

    except Exception as error:
        print(f"Failed '{table}'{error}")