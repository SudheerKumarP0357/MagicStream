#!/bin/sh

# Replace the placeholder in config.js with actual environment variable
envsubst '${API_URL}' < /usr/share/nginx/html/config.js > /usr/share/nginx/html/config.js.tmp
mv /usr/share/nginx/html/config.js.tmp /usr/share/nginx/html/config.js

# Start nginx
nginx -g 'daemon off;'