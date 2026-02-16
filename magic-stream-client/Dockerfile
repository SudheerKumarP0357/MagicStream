FROM node:24-alpine AS build

# Set working directory
WORKDIR /app

COPY package*.json ./

# Same as npm install
RUN npm ci

COPY . .

RUN npm run build

# 2. For Nginx setup
FROM nginx:alpine

# Install envsubst (gettext package)
RUN apk add --no-cache gettext

WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf ./*

# Copy static assets from builder stage
COPY --from=build /app/dist/ .

# Copy nginx config (optional, if you need custom config)
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy and set permissions for entrypoint script
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/docker-entrypoint.sh"]