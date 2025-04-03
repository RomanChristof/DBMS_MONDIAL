LOAD CSV WITH HEADERS FROM 'file:///csv/countryothername.csv' AS row
MATCH (c:country {code: row.country}), (o:countryothername {othername: row.othername})
MERGE (c)-[:HAS_OTHERNAME]->(o);


LOAD CSV WITH HEADERS FROM 'file:///csv/ethnicgroup.csv' AS row
MATCH (c:country {code: row.country}), (e:ethnicGroup {name: row.name})
WHERE row.percentage IS NOT NULL
MERGE (c)-[:HAS_ETHNIC_GROUP {percentage: toFloat(row.percentage)}]->(e);


