FROM nginx:stable-alpine
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
# HTTP
EXPOSE 80
# HTTPS
EXPOSE 443
# Backend
EXPOSE 8443
# Web Push Service
EXPOSE 444
# SE-Project
EXPOSE 3000