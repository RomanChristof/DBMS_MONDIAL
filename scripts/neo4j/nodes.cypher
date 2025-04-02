LOAD CSV WITH HEADERS FROM 'file:///csv/countries.csv' AS row
CREATE (:Country {
  Name: row.Name,
  Code: row.Code,
  Capital: row.Capital,
  Province: row.Province,
  Area: toFloat(row.Area),
  Population: toInteger(row.Population)
});
