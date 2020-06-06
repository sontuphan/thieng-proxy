FROM nginx:1.18.0

WORKDIR /home/thieng-proxy

RUN apt-get update
COPY . .

RUN sh packages.sh