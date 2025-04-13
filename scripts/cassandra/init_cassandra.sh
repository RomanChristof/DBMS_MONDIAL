#!/bin/bash

# Enable job control
set -m

# Start Cassandra in the background
/opt/bitnami/scripts/cassandra/entrypoint.sh /opt/bitnami/scripts/cassandra/run.sh &

echo "Waiting for Cassandra to be available ..."

until cqlsh -u "$CASSANDRA_USER" -p "$CASSANDRA_PASSWORD" -e "DESCRIBE KEYSPACES;" > /dev/null 2>&1; do
  sleep 1
done

echo "Cassandra is ready. Executing .cql scripts..."

INIT_DIR="/data/cassandra"

if [ -d "$INIT_DIR" ]; then
  find "$INIT_DIR" -maxdepth 1 -type f -name "*.cql" -print0 | while IFS= read -r -d '' file; do
    echo "Running $file..."
    cqlsh -u "$CASSANDRA_USER" -p "$CASSANDRA_PASSWORD" -f "$file"
  done
else
  echo "No init directory found at $INIT_DIR"
fi

echo "All scripts executed. Cassandra is running."

# Bring Cassandra process to the foreground
fg %1