FROM stain/jena-fuseki:latest

# Salin folder TTL dataset
COPY ./dataset /fuseki/configuration/

# Salin skrip entrypoint
COPY entrypoint.sh /app/entrypoint.sh

# Jalankan dengan bash langsung agar tidak perlu chmod
ENTRYPOINT ["bash", "/app/entrypoint.sh"]
