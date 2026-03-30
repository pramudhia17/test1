# Dockerfile
FROM nginx:alpine

# Hapus default nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy file web kamu
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80