#!/bin/bash

psql -U ${POSTGRES_USER} -p 5432 -d dbms <<- END
    CREATE ROLE ${POSTGRES_USER} LOGIN PASSWORD '${POSTGRES_PASSWORD}';
    CREATE ROLE survey INHERIT;
    CREATE ROLE student_ INHERIT;
    CREATE ROLE user_role INHERIT;
    GRANT ${POSTGRES_USER} TO student_, survey, user_role;
END

export PGPASSWORD=${POSTGRES_PASSWORD}
# Run the schema SQL file (plain SQL) to create tables etc.
psql -U ${POSTGRES_USER} -p 5432 -d dbms -f /docker-entrypoint-initdb.d/mondial-schema.psql

# Run the data insertion SQL file
psql -U ${POSTGRES_USER} -p 5432 -d dbms -f /docker-entrypoint-initdb.d/mondial-inputs.psql
