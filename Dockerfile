FROM stain/jena-fuseki:latest

COPY ./dataset /fuseki/configuration/
COPY entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
