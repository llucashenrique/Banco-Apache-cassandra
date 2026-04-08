#!/bin/bash

echo "Aguardando Cassandra iniciar..."

until cqlsh cassandra10 9042 -e "DESCRIBE KEYSPACES" > /dev/null 2>&1; do
  sleep 5
done

echo "Cassandra pronto! Executando scripts..."

cqlsh cassandra10 9042 -f /scripts/create_tables.cql
cqlsh cassandra10 9042 -f /scripts/insert.cql

echo "Scripts executados!"