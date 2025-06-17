FROM stain/jena-fuseki:latest

# Salin folder dataset TTL ke konfigurasi fuseki
COPY ./dataset /fuseki/configuration/

# Salin entrypoint script ke lokasi aman
COPY entrypoint.sh /app/entrypoint.sh

# Beri permission agar bisa dieksekusi
RUN chmod +x /app/entrypoint.sh

# Jalankan skrip entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]
