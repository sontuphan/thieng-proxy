FROM nginx:1.18.0

WORKDIR /home/thieng-proxy

COPY configs/ /etc/nginx/conf.d/
RUN apt-get update
COPY . .
RUN sh packages.sh

CMD ["sh", "nginx.sh"]