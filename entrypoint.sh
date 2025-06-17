#!/bin/bash

# Buat dataset dan load semua TTL
for ttl in /fuseki/configuration/*.ttl; do
    dataset=$(basename "$ttl" .ttl)
    /jena-fuseki/fuseki-server --update --mem /${dataset} &
    sleep 5
    curl -X POST --data-binary "@$ttl" \
         -H "Content-Type: text/turtle" \
         http://localhost:3030/${dataset}/data
done

# Jalankan Fuseki
exec /jena-fuseki/fuseki-server
