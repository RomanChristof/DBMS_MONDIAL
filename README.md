# MONDIAL 

This is the repository for the MONDIAL-Project of the DBMS practical course at Goethe University Frankfurt. 
It is based on [DBMSBlockSS25](https://github.com/jeschaef/DBMSBlockSS25) and integrates [MONDIAL](https://www.dbis.informatik.uni-goettingen.de/Mondial/#SQL) data 


# Installation

## Requirements

1. Install & start [Docker](https://docs.docker.com/get-started/get-docker/) (if not already on your machine)
2. Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) (if not already on your machine)
3. Clone the repository `git clone https://github.com/RomanChristof/DBMS_MONDIAL`
4. Change into the project directory cd DBMS_MONDIAL
5. Copy "mondial-inputs.psql" and "mondial-schema.psql" from [MONDIAL](https://www.dbis.informatik.uni-goettingen.de/Mondial/#SQL) to [Postgres folder](scripts/postgres)
6. Usernames and passwords for the DBMS can be changed in the .env file. 


## Configuration

Set values for each of the environment variables (usernames/emails + passwords) in .env, e.g., `PG_USER=postgres`

Alternatively, you can replace the environment variables with the actual values in the [docker-compose.yml](docker-compose.yml) directly.

If you want to start only specific databases, you can comment out the other databases and their clients before starting the containers. 
For example, to work on the PostgreSQL assignment, you just need the containers "postgres" and "pgadmin".

The port mappings of the databases/web clients can be changed in the [docker-compose.yml](docker-compose.yml) if necessary.

## Start/stop the containers

You can start the containers with `docker compose up -d` from the CLI. 
The containers can be brought down with `docker compose down` from the CLI.

You can also specify which containers to start, e.g., `docker compose up -d postgres pgadmin` for the PostgreSQL database and client only.

For Cassandra you have to start: `docker compose up -d cassandra cql-loader cassandra-web`

## Access the databases

When the containers are running, each of the databases can be accessed via a web tool from your browser locally:
- PostgreSQL @ [http://localhost:5433](http://localhost:5433)
- Cassandra @ [http://localhost:9043](http://localhost:9043)
- Neo4J @ [http://localhost:7474](http://localhost:7474)
- Mongo @ [http://localhost:3000](http://localhost:3000)

If you updated the port mappings, you have to use different urls accordingly.

The username/email and password are the ones defined in .env

For MongoDB, you just have to open the shell and excute `use dbms` in Shell and write the you query as `db.Collection.find()`


# Troubleshooting

You can check logs of all containers with `docker compose logs` or just specific ones, e.g., `docker compose logs postgres`. 
This can also be done nicely in Docker Desktop (needs to be installed).


Generally, the web clients wait for the right database containers to start up. If the (cassandra) container startup takes too long (causes docker to determine containers being unhealthy although they just not finished starting yet), you can increase the healthcheck parameters in docker-compose.yml. Still, a healthy container is not necessarily ready in the sense of all data being loaded already (in particular cassandra takes some time due to the large email import file).

## Problem and solution

If you have a problem with mongoDB Client and get the `Authentication error` you should open the container `dbms/mongo/exce` and execute the comando: `mongosh "mongodb://mongo:MONGO_PASSWORD@localhost:27017/mondial?authSource=admin"` and create a user with admin rights: `db.createUser({user: "mongo", pwd: "MONGO_PASSWORD", roles: [ { role: "readWrite", db: "mondial" }, { role: "readWrite", db: "dbms" } ]}) `
By replacing the `mongo` with your mongo_user_name and the `MONGO_PASSWORD` with your mongo_password.


## Neo4J

### Neo4j container doesn't start
If this error `exec /var/lib/neo4j/import/neo4j_entrypoint.sh:` permission denied occurs when starting the container for the first time: 
Enter `chmod +x scripts/neo4j/neo4j_entrypoint.sh` in your CLI.


### Did not load nodes or relationships

If the .cypher scripts were not executed properly (e.g. do not see node labels or relationship types in your database).
You can manually run the scripts by entering the following in your CLI: 

`docker exec -it dbms-neo4j-1 cypher-shell -u <your_usernamen> -p <your_password> -f /var/lib/neo4j/import/nodes.cypher`
and
`docker exec -it dbms-neo4j-1 cypher-shell -u <your_usernamen> -p <your_password> -f /var/lib/neo4j/import/relationships.cypher`

Please make sure to change you password as defined in `.env`

If you still having issues with the import: copy and past the contents of nodes.cypher and relationships.cypher manually in the query field of the database.


## References
Wolfgang May. *Information Extraction and Integration with Florid: The Mondial Case Study*. Technical Report 131, Universität Freiburg, Institut für Informatik, 1999. Available at: http://dbis.informatik.uni-goettingen.de/Mondial
