FROM nginx:1.18.0

WORKDIR /home/thieng-proxy

# RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
# COPY docker-nginx/html /usr/share/nginx/html
# COPY conf /etc/nginx

RUN apt-get update
COPY . .

RUN sh packages.sh