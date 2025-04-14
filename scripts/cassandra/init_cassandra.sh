#!/bin/bash

# Wait until Cassandra responds to cqlsh
echo "Waiting for Cassandra to be ready..."
# Wait for cqlsh to respond
until cqlsh -e "SELECT now() FROM system.local;" >/dev/null 2>&1; do
  echo " Cassandra not ready yet. Retrying in 5s..."
  sleep 10
done

echo "Cassandra is ready. Running CQL scripts..."

# Run all .cql files in the scripts/cassandra directory
for file in scripts/*.cql; do
    echo "Executing $file"
    cqlsh -f "$file"
    echo "One file processed ..."
done

echo "Running CQL scripts finished. "


# Optional: keep the container running
tail -f /dev/null