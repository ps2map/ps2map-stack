#!/bin/sh

echo "API_URL is set to: ${API_URL}"

# Replace the default port in index.js with the one provided by the environment
sed -i "s|http://127.0.0.1:5000/|${API_URL}|g" /usr/share/nginx/html/index.js

# Start the Nginx server
nginx -g 'daemon off;'
