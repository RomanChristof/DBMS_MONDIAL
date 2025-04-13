# MONDIAL (only Neo4j)

This is the repository for the MONDIAL-Project of the DBMS practical course at Goethe University Frankfurt. 
It is based on [DBMSBlockSS25](https://github.com/jeschaef/DBMSBlockSS25) and integrates [MONDIAL](https://www.dbis.informatik.uni-goettingen.de/Mondial/#SQL) data 


# Installation

## Requirements

1. Install & start [Docker](https://docs.docker.com/get-started/get-docker/) (if not already on your machine)
2. Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) (if not already on your machine)
3. Clone the repository `git clone https://github.com/RomanChristof/DBMS_MONDIAL`
4. Change into the project directory cd DBMS_MONDIAL

### Quick Start Guide 
5. Open the DBMS_MONDIAL project.
6. Set a new password for `NEO_PASSWORD` in the `.env` file, let `NEO_USER` at default.
7. Start the Neo4j container by using `docker compose up -d neo4j`.
8. Wait until the caontainer is loaded and initialized (might take few minutes).
9. Access the databases via a web tool from your browser locally at: [http://localhost:7474](http://localhost:7474)
10. Use the Connect URL `bolt://localhost:7687` and credentials from `.env` to log into the database.
#
**More comprehensive guide starts under here:**
## Configuration 


Set a custom password for Neo4j by updating the `NEO_PASSWORD` in .env and let the username at default (`NEO_USER=neo4j`).

Alternatively, you can replace the environment variable with the actual values in [docker-compose.yml](docker-compose.yml) directly.

If you want to start only the Neo4J databases, you can comment out the other databases and their clients before starting the containers. 
As another option, you can start only Neo4j using the CLI by running: `docker compose up -d neo4j`

The port mappings of the database can be changed in the [docker-compose.yml](docker-compose.yml) if necessary.

## Start/stop the containers

You can start the container with `docker compose up -d neo4j` from the CLI. 
The containers can be brought down with `docker compose down neo4j` from the CLI.

Please note that the container may take a bit longer to start, as it needs to download the Neo4j image and execute the import of the .cypher scripts during the initialization process.

## Access the databases

When the container is running, the databases can be accessed at  via a web tool from your browser locally here:
[http://localhost:7474](http://localhost:7474)

### After you opened it in your browser
To access the database in your web browser:
- use the Connect URL `bolt://localhost:7687` (if not changed from default)
- Choose the Authentication type `Username / Password`
- And enter the username and password as defined in `.env`

If you updated the port mappings, you have to use different urls accordingly.
Use  `docker compose ps` to get infos on the Status and used Ports


# Troubleshooting

### Check the logs
You can check log of the Neo4j container with `docker compose logs neo4j` from the CLI. 
Alternatively you can check it via the Docker Desktop (needs to be installed).

### See information about the status, name and ports
Use  `docker compose ps` to get general information.

### Check details about the container
Use `docker inspect neo4j` to get details about the container

### Did not load nodes or relationships

If the .cypher scripts were not executed properly (e.g. do not see node labels or relationship types in your database).
You can manually run the scripts by entering the following in your CLI: 

`docker exec -it dbms-neo4j-1 cypher-shell -u neo4j -p <your_password> -f /var/lib/neo4j/import/nodes.cypher`
and
`docker exec -it dbms-neo4j-1 cypher-shell -u neo4j -p <your_password> -f /var/lib/neo4j/import/relationships.cypher`

Please make sure to change you password as defined in `.env`

You still having issues with the import: copy and past the contents of `nodes.cypher` and `relationships.cypher` manually as query's in the database.  

### Startup Timing and Healthcheck Behavior
In general, the Neo4j web interface becomes available once the corresponding container has started. 
However, if the startup process takes longer than expected, Docker might incorrectly mark the container as unhealthy 
even though Neo4j is still initializing in the background. To address this, you can increase the healthcheck parameters
in your `docker-compose.yml`. Keep in mind that a "healthy" status does not always mean that all data
(e.g. `.cypher` imports) has been fully loaded especially if the script is larger and is processed during startup.
