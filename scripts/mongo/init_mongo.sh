#!/bin/bash

set -e

mongosh <<- END
  use $MONGO_INITDB_DATABASE

  db.createUser(
    {
      user: $MONGO_INITDB_ROOT_USERNAME,
      pwd: $MONGO_INITDB_ROOT_PASSWORD,
      roles: [{
          role: "readWrite",
          db: $MONGO_INITDB_DATABASE
      }]
    }
  );

  db.createCollection("Country");
  db.createCollection("City");
  db.createCollection("Province");
  db.createCollection("Economy");
  db.createCollection("Population");
  db.createCollection("Politics");
  db.createCollection("Religion");
  db.createCollection("EthnicGroup");
  db.createCollection("Spoken");
  db.createCollection("Language");
  db.createCollection("Countrypops");
  db.createCollection("Countryothername");
  db.createCollection("Countrylocalname");
  db.createCollection("Provpops");
  db.createCollection("Provinceothername");
  db.createCollection("Provincelocalname");
  db.createCollection("Citypops");
  db.createCollection("Cityothername");
  db.createCollection("Citylocalname");
  db.createCollection("Continent");
  db.createCollection("borders");
  db.createCollection("encompasses");
  db.createCollection("Organization");
  db.createCollection("isMember");
  db.createCollection("Mountain");
  db.createCollection("Desert");
  db.createCollection("Island");
  db.createCollection("Lake");
  db.createCollection("Sea");
  db.createCollection("River");
  db.createCollection("RiverThrough");
  db.createCollection("geo_Mountain");
  db.createCollection("geo_Desert");
  db.createCollection("geo_Island");
  db.createCollection("geo_River");
  db.createCollection("geo_Sea");
  db.createCollection("geo_Lake");
  db.createCollection("geo_Source");
  db.createCollection("geo_Estuary");
  db.createCollection("mergesWith");
  db.createCollection("located");
  db.createCollection("locatedOn");
  db.createCollection("islandIn");
  db.createCollection("MountainOnIsland");
  db.createCollection("PoliLakeOnIslandtics");
  db.createCollection("PolitRiverOnIslandics");
  db.createCollection("Airport");
END


echo "Loading Country collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Country --type csv --headerline /docker-entrypoint-initdb.d/csv/Country.csv

echo "Loading City collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c City --type csv --headerline /docker-entrypoint-initdb.d/csv/City.csv

echo "Loading Province collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Province --type csv --headerline /docker-entrypoint-initdb.d/csv/Province.csv

echo "Loading Economy collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Economy --type csv --headerline /docker-entrypoint-initdb.d/csv/Economy.csv

echo "Loading Population collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Population --type csv --headerline /docker-entrypoint-initdb.d/csv/Population.csv

echo "Loading Politics collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Politics --type csv --headerline /docker-entrypoint-initdb.d/csv/Politics.csv

echo "Loading Religion collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Religion --type csv --headerline /docker-entrypoint-initdb.d/csv/Religion.csv

echo "Loading EthnicGroup collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c EthnicGroup --type csv --headerline /docker-entrypoint-initdb.d/csv/EthnicGroup.csv

echo "Loading Spoken collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Spoken --type csv --headerline /docker-entrypoint-initdb.d/csv/Spoken.csv

echo "Loading Language collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Language --type csv --headerline /docker-entrypoint-initdb.d/csv/Language.csv

echo "Loading Countrypops collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Countrypops --type csv --headerline /docker-entrypoint-initdb.d/csv/Countrypops.csv

echo "Loading Countryothername collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Countryothername --type csv --headerline /docker-entrypoint-initdb.d/csv/Countryothername.csv

echo "Loading Countrylocalname collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Countrylocalname --type csv --headerline /docker-entrypoint-initdb.d/csv/Countrylocalname.csv

echo "Loading Provpops collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Provpops --type csv --headerline /docker-entrypoint-initdb.d/csv/Provpops.csv

echo "Loading Provinceothername collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Provinceothername --type csv --headerline /docker-entrypoint-initdb.d/csv/Provinceothername.csv

echo "Loading Provincelocalname collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Provincelocalname --type csv --headerline /docker-entrypoint-initdb.d/csv/Provincelocalname.csv

echo "Loading Citypops collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Citypops --type csv --headerline /docker-entrypoint-initdb.d/csv/Citypops.csv

echo "Loading Cityothername collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Cityothername --type csv --headerline /docker-entrypoint-initdb.d/csv/Cityothername.csv

echo "Loading Citylocalname collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Citylocalname --type csv --headerline /docker-entrypoint-initdb.d/csv/Citylocalname.csv

echo "Loading Continent collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Continent --type csv --headerline /docker-entrypoint-initdb.d/csv/Continent.csv

echo "Loading encompasses collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c encompasses --type csv --headerline /docker-entrypoint-initdb.d/csv/encompasses.csv

echo "Loading Organization collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Organization --type csv --headerline /docker-entrypoint-initdb.d/csv/Organization.csv

echo "Loading isMember collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c isMember --type csv --headerline /docker-entrypoint-initdb.d/csv/isMember.csv

echo "Loading Mountain collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Mountain --type csv --headerline /docker-entrypoint-initdb.d/csv/Mountain.csv

echo "Loading Desert collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Desert --type csv --headerline /docker-entrypoint-initdb.d/csv/Desert.csv

echo "Loading Island collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Island --type csv --headerline /docker-entrypoint-initdb.d/csv/Island.csv

echo "Loading Lake collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Lake --type csv --headerline /docker-entrypoint-initdb.d/csv/Lake.csv

echo "Loading Sea collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Sea --type csv --headerline /docker-entrypoint-initdb.d/csv/Sea.csv

echo "Loading River collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c River --type csv --headerline /docker-entrypoint-initdb.d/csv/River.csv

echo "Loading RiverThrough collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c RiverThrough --type csv --headerline /docker-entrypoint-initdb.d/csv/RiverThrough.csv

echo "Loading geo_Mountain collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c geo_Mountain --type csv --headerline /docker-entrypoint-initdb.d/csv/geo_Mountain.csv

echo "Loading geo_Desert collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c geo_Desert --type csv --headerline /docker-entrypoint-initdb.d/csv/geo_Desert.csv

echo "Loading geo_Island collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c geo_Island --type csv --headerline /docker-entrypoint-initdb.d/csv/geo_Island.csv

echo "Loading geo_River collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c geo_River --type csv --headerline /docker-entrypoint-initdb.d/csv/geo_River.csv

echo "Loading geo_Sea collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c geo_Sea --type csv --headerline /docker-entrypoint-initdb.d/csv/geo_Sea.csv

echo "Loading geo_Lake collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c geo_Lake --type csv --headerline /docker-entrypoint-initdb.d/csv/geo_Lake.csv

echo "Loading geo_Source collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c geo_Source --type csv --headerline /docker-entrypoint-initdb.d/csv/geo_Source.csv

echo "Loading geo_Estuary collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c geo_Estuary --type csv --headerline /docker-entrypoint-initdb.d/csv/geo_Estuary.csv

echo "Loading mergesWith collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c mergesWith --type csv --headerline /docker-entrypoint-initdb.d/csv/mergesWith.csv

echo "Loading located collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c located --type csv --headerline /docker-entrypoint-initdb.d/csv/located.csv

echo "Loading islandIn collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c islandIn --type csv --headerline /docker-entrypoint-initdb.d/csv/islandIn.csv

echo "Loading MountainOnIsland collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c MountainOnIsland --type csv --headerline /docker-entrypoint-initdb.d/csv/MountainOnIsland.csv

echo "Loading LakeOnIsland collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c LakeOnIsland --type csv --headerline /docker-entrypoint-initdb.d/csv/LakeOnIsland.csv

echo "Loading RiverOnIsland collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c RiverOnIsland --type csv --headerline /docker-entrypoint-initdb.d/csv/RiverOnIsland.csv

echo "Loading Airport collection from csv ..."
mongoimport -d $MONGO_INITDB_DATABASE -c Airport --type csv --headerline /docker-entrypoint-initdb.d/csv/Airport.csv