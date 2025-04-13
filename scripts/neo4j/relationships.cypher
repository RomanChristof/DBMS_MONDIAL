LOAD CSV WITH HEADERS FROM 'file:///csv/borders.csv' AS row
MATCH (c1:Country {code: row.country1})
MATCH (c2:Country {code: row.country2})
MERGE (c1)-[:BORDER_TO {length: row.length}]->(c2);
//load borders between county's

// country has localname
LOAD CSV WITH HEADERS FROM 'file:///csv/countrylocalname.csv' AS row
MATCH (c:Country {code: row.country})
MATCH (l:Country_localname {localname: row.localname})
MERGE (c)-[:COUNTRY_LOCALNAME]->(l);

// country has othername
LOAD CSV WITH HEADERS FROM 'file:///csv/countryothername.csv' AS row
MATCH (c:Country {code: row.country})
MATCH (o:Country_othername {othername: row.othername})
MERGE (c)-[:COUNTRY_OTHERNAME]->(o);

// city has localname
LOAD CSV WITH HEADERS FROM 'file:///csv/citylocalname.csv' AS row
MATCH (c:City {name: row.city})
MATCH (l:City_localname {localname: row.localname})
MERGE (c)-[:CITY_LOCALNAME]->(l);

// city has othername
LOAD CSV WITH HEADERS FROM 'file:///csv/cityothername.csv' AS row
MATCH (c:City {name: row.city})
MATCH (o:City_othername {othername: row.othername})
MERGE (c)-[:CITY_OTHERNAME]->(o);

// city is capital of country
LOAD CSV WITH HEADERS FROM 'file:///csv/country.csv' AS row
MATCH (co:Country {name: row.name})
MATCH (ci:City {name: row.capital})
MERGE (ci)-[:CAPITAL_OF]->(co);

// province has localname
LOAD CSV WITH HEADERS FROM 'file:///csv/provincelocalname.csv' AS row
MATCH (p:Province {name: row.province})
MATCH (l:Province_localname {localname: row.localname})
MERGE (p)-[:PROVINCE_LOCALNAME]->(l);

// province has othername
LOAD CSV WITH HEADERS FROM 'file:///csv/provinceothername.csv' AS row
MATCH (p:Province {name: row.province})
MATCH (o:Province_othername {othername: row.othername})
MERGE (p)-[:PROVINCE_OTHERNAME]->(o);

// ethnic group to country
LOAD CSV WITH HEADERS FROM 'file:///csv/ethnicgroup.csv' AS row
MATCH (c:Country {code: row.country})
MATCH (e:Ethnicgroup {name: row.name})
WHERE row.percentage IS NOT NULL
MERGE (c)-[:HAS_ETHNIC_GROUP {percentage: toFloat(row.percentage)}]->(e);

// country has religion
LOAD CSV WITH HEADERS FROM 'file:///csv/religion.csv' AS row
MATCH (c:Country {code: row.country})
MATCH (r:Religion {name: row.name})
WHERE row.percentage IS NOT NULL
MERGE (c)-[:HAS_RELIGION {percentage: toFloat(row.percentage)}]->(r);

// country has languages spoken
LOAD CSV WITH HEADERS FROM 'file:///csv/spoken.csv' AS row
MATCH (c:Country {code: row.country})
MATCH (l:Language {name: row.language})
WHERE row.percentage IS NOT NULL
MERGE (c)-[:SPOKEN {percentage: toFloat(row.percentage)}]->(l);

// city population per year
LOAD CSV WITH HEADERS FROM 'file:///csv/citypops.csv' AS row
MATCH (c:City {name: row.city})
MATCH (y:Year {year: toInteger(row.year)})
MERGE (c)-[:POPULATION_CITY {population: toInteger(row.population)}]->(y);

// country population per year
LOAD CSV WITH HEADERS FROM 'file:///csv/countrypops.csv' AS row
MATCH (c:Country {code: row.country})
MATCH (y:Year {year: toInteger(row.year)})
MERGE (c)-[:POPULATION_COUNTRY {population: toInteger(row.population)}]->(y);

// province population per year
LOAD CSV WITH HEADERS FROM 'file:///csv/provpops.csv' AS row
MATCH (p:Province {name: row.province})
MATCH (y:Year {year: toInteger(row.year)})
MERGE (p)-[:POPULATION_PROVINCE {population: toInteger(row.population)}]->(y);

// country encompasses continent
LOAD CSV WITH HEADERS FROM 'file:///csv/encompasses.csv' AS row
WITH row WHERE row.continent IS NOT NULL AND row.country IS NOT NULL
MATCH (conti:Continent {name: row.continent})
MATCH (cntry:Country {code: row.country})
MERGE (cntry)-[:ENCOMPASSES {percentage: toFloat(trim(row.percentage))}]->(conti);

// country ismember of organisation
LOAD CSV WITH HEADERS FROM 'file:///csv/ismember.csv' AS row
MATCH (c:Country {code: row.country})
MATCH (n:Organization {abbreviation: row.organization})
WHERE row.type IS NOT NULL
MERGE (c)-[:IS_MEMBER {type: row.type}]->(n);

// desert in province
LOAD CSV WITH HEADERS FROM 'file:///csv/geo_desert.csv' AS row
MATCH (d:Desert {name: row.desert})
MATCH (p:Province {name: row.province})
MERGE (d)-[:DESERT_IN_PROVINCE]->(p);

// mountain in province
LOAD CSV WITH HEADERS FROM 'file:///csv/geo_mountain.csv' AS row
MATCH (m:Mountain {name: row.mountain})
MATCH (p:Province {name: row.province})
MERGE (m)-[:MOUNTAIN_IN_PROVINCE]->(p);

// province located in country
LOAD CSV WITH HEADERS FROM 'file:///csv/located.csv' AS row
MATCH (c: Country {code: row.country})
MATCH (p: Province {name: row.province})
MERGE (p)-[:PROVINCE_IN_COUNTRY]->(c);

// city located in country
LOAD CSV WITH HEADERS FROM 'file:///csv/located.csv' AS row
MATCH (co: Country {code: row.country})
MATCH (ci: City {name: row.city})
MERGE (ci)-[:CITY_IN_COUNTRY]->(co);

// country has economy
LOAD CSV WITH HEADERS FROM 'file:///csv/economy.csv' AS row
MATCH (c:Country {code: row.country})
MATCH (e:Economy {economy_name: "Econ_" + row.country})
MERGE (c)-[:HAS_ECONOMY]->(e);

// country has politics
LOAD CSV WITH HEADERS FROM 'file:///csv/politics.csv' AS row
MATCH (c:Country {code: row.country}), (p:Politics {government: row.government})
MERGE (c)-[r:HAS_POLITICS]->(p)
SET
    r.wasdependent = CASE WHEN row.wasdependent IS NOT NULL AND row.wasdependent <> '' THEN row.wasdependent ELSE NULL END,
    r.dependent = CASE WHEN row.dependent IS NOT NULL AND row.dependent <> '' THEN row.dependent ELSE NULL END,
    r.independence = CASE WHEN row.independence IS NOT NULL AND row.independence <> '' THEN row.independence ELSE NULL END;

// sea is located at province
LOAD CSV WITH HEADERS FROM 'file:///csv/geo_sea.csv' AS row
MATCH (p:Province {name: row.province})
MATCH (s:Sea {name: row.sea})
MERGE (s)-[:SEA_AT_PROVINCE]->(p);

// sea merges in sea
LOAD CSV WITH HEADERS FROM 'file:///csv/mergeswith.csv' AS row
MATCH (s1:Sea {name: row.sea1})
MATCH (s2:Sea {name: row.sea2})
MERGE (s1)-[:MERGES_WITH]->(s2);

//airport located in city
LOAD CSV WITH HEADERS FROM 'file:///csv/airport.csv' AS row
MATCH (a: Airport {iatacode: row.iatacode})
MATCH (c: City {name: row.city})
MERGE (a)-[:AIRPORT_NEAR_CITY]->(c);

//airport located in country
LOAD CSV WITH HEADERS FROM 'file:///csv/airport.csv' AS row
MATCH (a: Airport {iatacode: row.iatacode})
MATCH (c: Country {code: row.country})
MERGE (a)-[:AIRPORT_IN_COUNTRY]->(c);

// airport located on island
LOAD CSV WITH HEADERS FROM 'file:///csv/airport.csv' AS row
MATCH (a: Airport {iatacode: row.iatacode})
MATCH (i: Island {name: row.island})
MERGE (a)-[:AIRPORT_ON_ISLAND]->(i);

// river estuary in province
LOAD CSV WITH HEADERS FROM 'file:///csv/geo_estuary.csv' AS row
MATCH (r: River {name: row.river})
MATCH (p: Province {name: row.province})
MERGE (r)-[:ESTUARY_PROVINCE]->(p);

// river starts in province
LOAD CSV WITH HEADERS FROM 'file:///csv/geo_source.csv' AS row
MATCH (r: River {name: row.river})
MATCH (p: Province {name: row.province})
MERGE (r)-[:STARTS_IN_PROVINCE]->(p);


//city located on island
LOAD CSV WITH HEADERS FROM 'file:///csv/locatedon.csv' AS row
MATCH (c:City {name: row.city})
MATCH (i:Island {name: row.island})
MERGE (c)-[:CITY_ON_ISLAND]->(i);


// laks located in province
LOAD CSV WITH HEADERS FROM 'file:///csv/geo_lake.csv' AS row
MATCH (p:Province {name: row.province})
MATCH (l:Lake {name: row.lake})
MERGE (l)-[:LAKE_IN_PROVINCE]->(p);


// island located in province
LOAD CSV WITH HEADERS FROM 'file:///csv/locatedon.csv' AS row
MATCH (p:Province {name: row.province})
MATCH (i:Island {name: row.island})
MERGE (i)-[:ISLAND_IN_PROVINCE]->(p);

// river through lake
LOAD CSV WITH HEADERS FROM 'file:///csv/riverthrough.csv' AS row
MATCH (r:River {name: row.river})
MATCH (l:Lake {name: row.lake})
MERGE (r)-[:RIVER_THROUGH]->(l);

//city located at river
LOAD CSV WITH HEADERS FROM 'file:///csv/located.csv' AS row
MATCH (c:City {name: row.city})
MATCH (r:River {name: row.river})
MERGE (c)-[:CITY_AT_RIVER]->(r);

// city located at lake
LOAD CSV WITH HEADERS FROM 'file:///csv/located.csv' AS row
MATCH (c:City {name: row.city})
MATCH (l:Lake {name: row.lake})
MERGE (c)-[:CITY_AT_LAKE]->(l);

// island in sea
LOAD CSV WITH HEADERS FROM 'file:///csv/islandin.csv' AS row
MATCH (i:Island {name: row.island})
MATCH (s:Sea {name: row.sea})
MERGE (i)-[:ISLAND_IN_SEA]->(s);

// city at sea
LOAD CSV WITH HEADERS FROM 'file:///csv/located.csv' AS row
MATCH (c:City {name: row.city})
MATCH (s:Sea {name: row.sea})
MERGE (c)-[:CITY_AT_SEA]->(s);


// island in river
LOAD CSV WITH HEADERS FROM 'file:///csv/islandin.csv' AS row
MATCH (i:Island {name: row.island})
MATCH (r:River {name: row.river})
MERGE (i)-[:ISLAND_IN_RIVER]->(r);

// island in Lake
LOAD CSV WITH HEADERS FROM 'file:///csv/islandin.csv' AS row
MATCH (i:Island {name: row.island})
MATCH (s:Lake {name: row.lake})
MERGE (i)-[:ISLAND_IN_LAKE]->(s);


// river on Island
LOAD CSV WITH HEADERS FROM 'file:///csv/riveronisland.csv' AS row
MATCH (r:River {name: row.river})
MATCH (i:Island {name: row.island})
MERGE (r)-[:RIVER_ON_ISLAND]->(i);


// link country and SocioEconomic
LOAD CSV WITH HEADERS FROM 'file:///csv/country.csv' AS row
MATCH (c:Country)
MATCH (se:SocioEconomic)
WHERE c.code = se.country_name
MERGE (c)-[:HAS_SOCIOECONOMIC]->(se)
REMOVE se.country_name;

// organization has headquarter in city
LOAD CSV WITH HEADERS FROM 'file:///csv/organization.csv' AS row
MATCH (o:Organization {name: row.name})
MATCH (c:City {name: row.city})
MERGE (o)-[:HEADQUARTERS_IN]->(c);

// superlanguage and sublanguage of a language
LOAD CSV WITH HEADERS FROM 'file:///csv/language.csv' AS row
MATCH (sublang:Language {name: row.name})
MATCH (superlang:Language {name: row.superlanguage})
WHERE row.superlanguage IS NOT NULL AND row.superlanguage <> ''
MERGE (sublang)-[:IS_SUB_LANGUAGE_OF]->(superlang);

// mountain part of mountains
LOAD CSV WITH HEADERS FROM 'file:///csv/mountain.csv' AS row
MATCH (m:Mountain {name: row.name})
MATCH (ms:Mountains {name: row.mountains})
WHERE row.mountains IS NOT NULL AND row.mountains <> ''
MERGE (m)-[:PART_OF]->(ms);

// mountains source of river
LOAD CSV WITH HEADERS FROM 'file:///csv/river.csv' AS row
MATCH (r:River {name: row.name})
MATCH (ms:Mountains {name: row.mountains})
WHERE row.mountains IS NOT NULL AND row.mountains <> ''
MERGE (ms)-[ri:SOURCE]->(r)
SET ri.coordinates = CASE WHEN row.source IS NOT NULL AND row.source <> '' THEN row.source ELSE NULL END,
    ri.elevation = CASE WHEN row.sourceelevation IS NOT NULL AND row.sourceelevation <> '' THEN toFloat(row.sourceelevation) ELSE NULL END;

// estuary of river in other river
LOAD CSV WITH HEADERS FROM 'file:///csv/river.csv' AS row
MATCH (r1:River {name: row.name})
MATCH (r2:River {name: row.river})
WHERE row.river IS NOT NULL AND row.river <> ''
MERGE (r1)-[rel:ESTUARY_IN_RIVER]->(r2)
SET rel.coordinates = CASE WHEN row.estuary IS NOT NULL AND row.estuary <> '' THEN row.estuary ELSE NULL END,
    rel.elevation = CASE WHEN row.estuaryelevation IS NOT NULL AND row.estuaryelevation <> '' THEN toFloat(row.estuaryelevation) ELSE NULL END;

// estuary of river in sea
LOAD CSV WITH HEADERS FROM 'file:///csv/river.csv' AS row
MATCH (ri:River {name: row.name})
MATCH (s:Sea {name: row.sea})
WHERE row.sea IS NOT NULL AND row.sea <> ''
MERGE (ri)-[r:ESTUARY_IN_SEA]->(s)
SET r.coordinates = row.estuary,
    r.elevation = toFloat(row.estuaryelevation);

// estuary of river in lake
LOAD CSV WITH HEADERS FROM 'file:///csv/river.csv' AS row
MATCH (ri:River {name: row.name})
MATCH (l:Lake {name: row.lake})
WHERE row.lake IS NOT NULL AND row.lake <> ''
MERGE (ri)-[r:ESTUARY_IN_LAKE]->(l)
SET r.coordinates = row.estuary,
    r.elevation = toFloat(row.estuaryelevation);
