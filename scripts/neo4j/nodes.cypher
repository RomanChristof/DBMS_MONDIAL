// Load airport node
LOAD CSV WITH HEADERS FROM 'file:///csv/airport.csv' AS row
CREATE (n:Airport)
SET n.iatacode = CASE WHEN row.iatacode IS NOT NULL AND row.iatacode <> '' THEN row.iatacode ELSE NULL END,
    n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.latitude = CASE WHEN row.latitude IS NOT NULL AND row.latitude <> '' THEN toFloat(trim(row.latitude)) ELSE NULL END,
    n.longitude = CASE WHEN row.longitude IS NOT NULL AND row.longitude <> '' THEN toFloat(trim(row.longitude)) ELSE NULL END,
    n.elevation = CASE WHEN row.elevation IS NOT NULL AND row.elevation <> '' THEN toInteger(trim(row.elevation)) ELSE NULL END,
    n.gmtoffset = CASE WHEN row.gmtoffset IS NOT NULL AND row.gmtoffset <> '' THEN toFloat(trim(row.gmtoffset)) ELSE NULL END;


// Load city node
LOAD CSV WITH HEADERS FROM 'file:///csv/city.csv' AS row
CREATE (n:City)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.population = CASE WHEN row.population IS NOT NULL AND row.population <> '' THEN toInteger(trim(row.population)) ELSE NULL END,
    n.latitude = CASE WHEN row.latitude IS NOT NULL AND row.latitude <> '' THEN toFloat(trim(row.latitude)) ELSE NULL END,
    n.longitude = CASE WHEN row.longitude IS NOT NULL AND row.longitude <> '' THEN toFloat(trim(row.longitude)) ELSE NULL END,
    n.elevation = CASE WHEN row.elevation IS NOT NULL AND row.elevation <> '' THEN toInteger(trim(row.elevation)) ELSE NULL END;

// Load citylocalname node
LOAD CSV WITH HEADERS FROM 'file:///csv/citylocalname.csv' AS row
MERGE (:City_localname {
    localname: row.localname,
    city: row.city
});

// Load cityothername node
LOAD CSV WITH HEADERS FROM 'file:///csv/cityothername.csv' AS row
MERGE (:City_othername {
    othername: row.othername
});

// Load continent node
LOAD CSV WITH HEADERS FROM 'file:///csv/continent.csv' AS row
MERGE (:Continent {
    name: row.name,
    area: toFloat(row.area)
});

// Load country node
LOAD CSV WITH HEADERS FROM 'file:///csv/country.csv' AS row
MERGE (:Country {
    name: row.name,
    area: toFloat(row.area),
    code: row.code,
    population: toInteger(row.population)
});


// Load countrylocalname node
LOAD CSV WITH HEADERS FROM 'file:///csv/countrylocalname.csv' AS row
MERGE (:Country_localname {
    localname: row.localname
});

// Load Country_othername node
LOAD CSV WITH HEADERS FROM 'file:///csv/countryothername.csv' AS row
MERGE (:Country_othername {
    othername: row.othername
});

// Load desert node
LOAD CSV WITH HEADERS FROM 'file:///csv/desert.csv' AS row
CREATE (n:Desert)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.area = CASE WHEN row.area IS NOT NULL AND row.area <> '' THEN toInteger(trim(row.area)) ELSE NULL END,
    n.coordinates = CASE WHEN row.coordinates IS NOT NULL AND row.coordinates <> '' THEN row.coordinates ELSE NULL END;


// Load ethnicgroup node
LOAD CSV WITH HEADERS FROM 'file:///csv/ethnicgroup.csv' AS row
MERGE (:Ethnicgroup {
    name: row.name
});

// Load island node
LOAD CSV WITH HEADERS FROM 'file:///csv/island.csv' AS row
CREATE (n:Island)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.area = CASE WHEN row.area IS NOT NULL AND row.area <> '' THEN toFloat(trim(row.area)) ELSE NULL END,
    n.elevation = CASE WHEN row.elevation IS NOT NULL AND row.elevation <> '' THEN toFloat(trim(row.elevation)) ELSE NULL END,
    n.type = CASE WHEN row.type IS NOT NULL AND row.type <> '' THEN row.type ELSE NULL END,
    n.coordinates = CASE WHEN row.coordinates IS NOT NULL AND row.coordinates <> '' THEN row.coordinates ELSE NULL END;


// Load lake node
LOAD CSV WITH HEADERS FROM 'file:///csv/lake.csv' AS row
CREATE (n:Lake)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.area = CASE WHEN row.area IS NOT NULL AND row.area <> '' THEN toFloat(trim(row.area)) ELSE NULL END,
    n.elevation = CASE WHEN row.elevation IS NOT NULL AND row.elevation <> '' THEN toFloat(trim(row.elevation)) ELSE NULL END,
    n.depth = CASE WHEN row.depth IS NOT NULL AND row.depth <> '' THEN toFloat(trim(row.depth)) ELSE NULL END,
    n.height = CASE WHEN row.height IS NOT NULL AND row.height <> '' THEN toFloat(trim(row.height)) ELSE NULL END,
    n.type = CASE WHEN row.type IS NOT NULL AND row.type <> '' THEN row.type ELSE NULL END,
    n.coordinates = CASE WHEN row.coordinates IS NOT NULL AND row.coordinates <> '' THEN row.coordinates ELSE NULL END;


// Load language node
LOAD CSV WITH HEADERS FROM 'file:///csv/language.csv' AS row
CREATE (n:Language)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END;


// Load mountain node
LOAD CSV WITH HEADERS FROM 'file:///csv/mountain.csv' AS row
CREATE (n:Mountain)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.elevation = CASE WHEN row.elevation IS NOT NULL AND row.elevation <> '' THEN toInteger(trim(row.elevation)) ELSE NULL END,
    n.type = CASE WHEN row.type IS NOT NULL AND row.type <> '' THEN row.type ELSE NULL END,
    n.coordinates = CASE WHEN row.coordinates IS NOT NULL AND row.coordinates <> '' THEN row.coordinates ELSE NULL END;

// Load mountains node (with an 's' at the end = Gebirge)
LOAD CSV WITH HEADERS FROM 'file:///csv/mountain.csv' AS row
WITH DISTINCT row.mountains AS mountains
WHERE mountains IS NOT NULL AND mountains <> ''
CREATE (:Mountains {name: mountains});


// Load organization node
LOAD CSV WITH HEADERS FROM 'file:///csv/organization.csv' AS row
CREATE (n:Organization)
SET n.abbreviation = CASE WHEN row.abbreviation IS NOT NULL AND row.abbreviation <> '' THEN row.abbreviation ELSE NULL END,
    n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.established = CASE WHEN row.established IS NOT NULL AND row.established <> '' THEN row.established ELSE NULL END,
    n.datetime = CASE WHEN row.datetime IS NOT NULL AND row.datetime <> '' THEN row.datetime ELSE NULL END;


// Load politics node
LOAD CSV WITH HEADERS FROM 'file:///csv/politics.csv' AS row
MERGE (:Politics {
    government: CASE
        WHEN row.government IS NOT NULL AND row.government <> '' THEN row.government
        ELSE 'unknown'
    END
});


// Load province node
LOAD CSV WITH HEADERS FROM 'file:///csv/province.csv' AS row
CREATE (n:Province)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.population = CASE WHEN row.population IS NOT NULL AND row.population <> '' THEN toInteger(trim(row.population)) ELSE NULL END,
    n.area = CASE WHEN row.area IS NOT NULL AND row.area <> '' THEN toInteger(trim(row.area)) ELSE NULL END,
    n.capital = CASE WHEN row.capital IS NOT NULL AND row.capital <> '' THEN row.capital ELSE NULL END;


// Load provincelocalname node
LOAD CSV WITH HEADERS FROM 'file:///csv/provincelocalname.csv' AS row
MERGE (:Province_localname {
    localname: row.localname
});


// Load provinceothername node
LOAD CSV WITH HEADERS FROM 'file:///csv/provinceothername.csv' AS row
MERGE (:Province_othername {
    othername: row.othername
});


// Load religion node
LOAD CSV WITH HEADERS FROM 'file:///csv/religion.csv' AS row
MERGE (:Religion {
    name: row.name
});

// Load river node
LOAD CSV WITH HEADERS FROM 'file:///csv/river.csv' AS row
CREATE (n:River)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.length = CASE WHEN row.length IS NOT NULL AND row.length <> '' THEN toFloat(trim(row.length)) ELSE NULL END,
    n.area = CASE WHEN row.area IS NOT NULL AND row.area <> '' THEN toFloat(trim(row.area)) ELSE NULL END;

// Load sea node
LOAD CSV WITH HEADERS FROM 'file:///csv/sea.csv' AS row
CREATE (n:Sea)
SET n.name = CASE WHEN row.name IS NOT NULL AND row.name <> '' THEN row.name ELSE NULL END,
    n.area = CASE WHEN row.area IS NOT NULL AND row.area <> '' THEN toInteger(trim(row.area)) ELSE NULL END,
    n.depth = CASE WHEN row.depth IS NOT NULL AND row.depth <> '' THEN toInteger(trim(row.depth)) ELSE NULL END;


// Load SocioEconomic node combining economy and population
LOAD CSV WITH HEADERS FROM 'file:///csv/economy.csv' AS econ
LOAD CSV WITH HEADERS FROM 'file:///csv/population.csv' AS pop
WITH econ, pop
WHERE econ.country = pop.country
CREATE (n:SocioEconomic)
SET n.gdp = CASE WHEN econ.gdp IS NOT NULL AND econ.gdp <> '' THEN toInteger(trim(econ.gdp)) ELSE NULL END,
    n.gdp_agriculture_share = CASE WHEN econ.agriculture IS NOT NULL AND econ.agriculture <> '' THEN toFloat(trim(econ.agriculture)) ELSE NULL END,
    n.gdp_service_share = CASE WHEN econ.service IS NOT NULL AND econ.service <> '' THEN toFloat(trim(econ.service)) ELSE NULL END,
    n.gdp_industry_share = CASE WHEN econ.industry IS NOT NULL AND econ.industry <> '' THEN toFloat(trim(econ.industry)) ELSE NULL END,
    n.inflation = CASE WHEN econ.inflation IS NOT NULL AND econ.inflation <> '' THEN toFloat(trim(econ.inflation)) ELSE NULL END,
    n.unemployment = CASE WHEN econ.unemployment IS NOT NULL AND econ.unemployment <> '' THEN toFloat(trim(econ.unemployment)) ELSE NULL END,
    n.population_growth = CASE WHEN pop.population_growth IS NOT NULL AND pop.population_growth <> '' THEN toFloat(trim(pop.population_growth)) ELSE NULL END,
    n.infant_mortality = CASE WHEN pop.infant_mortality IS NOT NULL AND pop.infant_mortality <> '' THEN toFloat(trim(pop.infant_mortality)) ELSE NULL END,
    n.country_name = econ.country;


// Load year node
LOAD CSV WITH HEADERS FROM 'file:///csv/year.csv' AS row
WITH row
WHERE row.year IS NOT NULL
MERGE (n:Year {
    year: toInteger(trim(row.year))
});

