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

  db.createCollection("person");
  db.createCollection("department");
  db.createCollection("email");
  db.createCollection("cc");
  db.createCollection("knows");
  db.createCollection("to");
END


echo "Loading person collection from csv ..."
mongoimport -d enron -c person --type csv --headerline /docker-entrypoint-initdb.d/csv/person_export_csv

echo "Loading department collection from csv ..."
mongoimport -d enron -c department --type csv --headerline /docker-entrypoint-initdb.d/csv/departments_export_csv

echo "Loading email collection from csv ..."
mongoimport -d enron -c email --type csv --headerline /docker-entrypoint-initdb.d/csv/email_without_to_cc_postgres.csv

echo "Loading cc collection from csv ..."
mongoimport -d enron -c cc --type csv --headerline /docker-entrypoint-initdb.d/csv/cc_export_csv

echo "Loading knows collection from csv ..."
mongoimport -d enron -c knows --type csv --headerline /docker-entrypoint-initdb.d/csv/knows_export_csv

echo "Loading to collection from csv ..."
mongoimport -d enron -c to --type csv --headerline /docker-entrypoint-initdb.d/csv/to_export_csv