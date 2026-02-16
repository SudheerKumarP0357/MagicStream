FROM mongo:8.0-noble

# Set the default database to match your script
ENV MONGO_INITDB_DATABASE=magic-stream-movies

# Copy your script
COPY init-db.js /docker-entrypoint-initdb.d/