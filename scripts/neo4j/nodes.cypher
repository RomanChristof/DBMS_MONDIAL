LOAD CSV WITH HEADERS FROM 'file:///csv/country.csv' AS row
CREATE (:country {
    name: row.name,
    code: row.code,
    capital: row.capital,
    province: row.province,
    area: toFloat(row.area),
    population: toInteger(row.population)
});

LOAD CSV WITH HEADERS FROM 'file:///csv/continent.csv' AS row
MERGE (:continent {
    name: row.name,
    area: toFloat(row.area)
});

LOAD CSV WITH HEADERS FROM 'file:///csv/countryothername.csv' AS row
MERGE (:countryothername {
    country: row.country,
    othername: row.othername
});

LOAD CSV WITH HEADERS FROM 'file:///csv/ethnicgroup.csv' AS row
WITH row WHERE row.percentage IS NOT NULL
MERGE (:ethnicGroup {
    name: row.name
});

