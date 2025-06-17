FROM stain/jena-fuseki

COPY dataset /fuseki/config/data
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
