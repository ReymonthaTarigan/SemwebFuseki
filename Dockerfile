FROM stain/jena-fuseki

COPY ./dataset /fuseki/configuration/

# Simpan script di folder aman
COPY entrypoint.sh /fuseki/entrypoint.sh

# Beri permission di lokasi yang diizinkan
RUN chmod +x /fuseki/entrypoint.sh

ENTRYPOINT ["/fuseki/entrypoint.sh"]
