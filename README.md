Nginx configuration for my Linode Server

docker run \
--name nginx1 \
--link spring1 \
--link push1 \
--link express1 \
-d \
-v /etc/letsencrypt/live/:/etc/nginx/ssl/live/:ro \
-v /etc/letsencrypt/archive/:/etc/nginx/ssl/archive/:ro \
-p 80:80 \
-p 443:443 \
-p 444:444 \
-p 8443:8443 \
-p 3000:3000 \
-p 3001:3001 \
--label=com.centurylinklabs.watchtower.enable=true \
-t ringodev/nginx-proxy
