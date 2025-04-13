#!/bin/bash

# turn on bash's job control
set -m

# Start the primary process and put it in the background
/startup/docker-entrypoint.sh neo4j &

echo "Waiting for Neo4j to be available via Bolt..."

# Wait until ready
until cypher-shell -u "$NEO_USER" -p "$NEO_PASSWORD" "RETURN 1;" > /dev/null 2>&1; do
  sleep 1
done

echo "Neo4j is ready. Executing .cypher scripts..."

# Change to the import directory and and execute .cypher files
cd /var/lib/neo4j/importd
find . -maxdepth 1 -type f -name "*.cypher" -print0 | while IFS= read -r -d '' file; do
  echo "Running $file..."
  cypher-shell -u "$NEO_USER" -p "$NEO_PASSWORD" -f "$file"
done

echo "All scripts executed. Neo4j is running."

# Now we bring the primary process back into the foreground
# And leave it there
fg %1
