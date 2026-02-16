#!/bin/bash
# seed-data.sh

echo "--- Importing JSON data ---"

# We authenticate against 'admin' but import into '$MONGO_INITDB_DATABASE'
# Note the added ?authSource=admin at the end of the URI
COMMON_URI="mongodb://$MONGO_INITDB_ROOT_USERNAME:$MONGO_INITDB_ROOT_PASSWORD@localhost:27017/?authSource=admin"

mongoimport --uri="$COMMON_URI" \
            --db=$MONGO_INITDB_DATABASE \
            --collection=movies \
            --type=json \
            --file=/docker-entrypoint-initdb.d/magic-stream-seed-data/movies.json \
            --jsonArray

mongoimport --uri="$COMMON_URI" \
            --db=$MONGO_INITDB_DATABASE \
            --collection=genres \
            --type=json \
            --file=/docker-entrypoint-initdb.d/magic-stream-seed-data/genres.json \
            --jsonArray

mongoimport --uri="$COMMON_URI" \
            --db=$MONGO_INITDB_DATABASE \
            --collection=rankings \
            --type=json \
            --file=/docker-entrypoint-initdb.d/magic-stream-seed-data/rankings.json \
            --jsonArray
            
mongoimport --uri="$COMMON_URI" \
            --db=$MONGO_INITDB_DATABASE \
            --collection=users \
            --type=json \
            --file=/docker-entrypoint-initdb.d/magic-stream-seed-data/users.json \
            --jsonArray

echo "--- Import Complete ---"