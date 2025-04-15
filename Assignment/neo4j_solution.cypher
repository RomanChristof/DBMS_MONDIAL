Solution for Neo4j Tasksheet

1.1
MATCH (ci:City)-[:CITY_IN_COUNTRY]->(co:Country)
RETURN ci.name AS city, co.name AS country
ORDER BY country

1.2
MATCH (ci:City)-[:CITY_IN_COUNTRY]->(co:Country)
RETURN co.name AS country, COUNT(ci) AS num_cities
ORDER BY num_cities DESC


1.3
MATCH (c:Country {name: 'United States'})-[:IS_MEMBER]->(o:Organization)
RETURN c.name AS country, COUNT(o) AS num_organizations

2.1
//output country above avg gdp with orga count
MATCH (c:Country)-[:HAS_SOCIOECONOMIC]->(se:SocioEconomic)
WITH avg(se.gdp) AS avg_gdp
MATCH (c:Country)-[:HAS_SOCIOECONOMIC]->(se:SocioEconomic)
WHERE se.gdp > avg_gdp
OPTIONAL MATCH (c)-[:IS_MEMBER]->(o:Organization)
RETURN c.name AS country, se.gdp AS gdp, COUNT(DISTINCT o) AS orga_num
ORDER BY gdp DESC

//output country below avg gdp with orga count
MATCH (c:Country)-[:HAS_SOCIOECONOMIC]->(se:SocioEconomic)
WITH avg(se.gdp) AS avg_gdp
MATCH (c:Country)-[:HAS_SOCIOECONOMIC]->(se:SocioEconomic)
WHERE se.gdp < avg_gdp
OPTIONAL MATCH (c)-[:IS_MEMBER]->(o:Organization)
RETURN c.name AS country, se.gdp AS gdp, COUNT(DISTINCT o) AS orga_num
ORDER BY gdp DESC

3.1
MATCH (c:Country)
SET c.newAttribute = value

3.2
MATCH (c:Country)
WHERE c.population IS NOT NULL AND c.area IS NOT NULL AND c.area <> 0
SET c.density = round(toFloat(c.population) / c.area * 100) / 100.0

4.1
MATCH (p:Politics)
RETURN
COUNT(CASE WHEN p.government IS NULL OR p.government = '' THEN 1 END) AS null_government,
COUNT(CASE WHEN p.wasdependent IS NULL OR p.wasdependent = '' THEN 1 END) AS null_wasdependent,
COUNT(CASE WHEN p.dependent IS NULL OR p.dependent = '' THEN 1 END) AS null_dependent,
COUNT(CASE WHEN p.independence IS NULL OR p.independence = '' THEN 1 END) AS null_independence


5.1
MATCH (c:Country)
WHERE c.population >= 1000000 AND c.population <= 6000000
RETURN c.name AS country, c.population
ORDER BY c.population ASC

5.2
MATCH (c:Country)-[:IS_MEMBER]->(o:Organization)
WHERE date(o.established) >= date("1945-01-01") AND date(o.established) <= date("1960-12-31")
RETURN DISTINCT c.name AS country, o.name AS organization
ORDER BY country, organization



6.1
MATCH (start:Country {name: 'Germany'}), (target:Country)
WHERE start <> target
MATCH path = shortestPath((start)-[:BORDER_TO*..20]-(target))
RETURN target.name AS country,
length(path) AS hops
ORDER BY hops DESC


6.2
MATCH (g:Country {name: "Greece"})-[:BORDER_TO]-(c1:Country)-[:BORDER_TO]-(c2:Country)
WHERE c2.name <> "Greece" AND c2 <> c1
RETURN DISTINCT c2.name AS two_hops
ORDER BY two_hops

ODER (einfacher)

MATCH (greece:Country {name: 'Greece'})-[:BORDER_TO*2]-(neighbor)
WHERE greece <> neighbor
RETURN DISTINCT neighbor.name AS two_hops

6.3
MATCH (start:Country {name: 'Portugal'}), (end:Country {name: 'Greece'})
MATCH path = shortestPath((start)-[:BORDER_TO*]-(end))
RETURN length(path) AS num_borders

6.4
MATCH (startCity:City {name: 'Luxembourg'})-[:CITY_AT_RIVER]->(startRiver:River)
MATCH (endCity:City {name: 'Mainz'})-[:CITY_AT_RIVER]->(endRiver:River)
WHERE startRiver <> endRiver
MATCH path = (startRiver)-[:ESTUARY_IN_RIVER*..10]->(endRiver)
RETURN length(path) AS hops

Or show path with:
RETURN path

6.extra
MATCH (start:Country {name: 'Germany'})-[:BORDER_TO*7]-(end:Country)
WHERE start <> end
RETURN DISTINCT start.name AS sender, target.name AS endCountry
ORDER BY endCountry