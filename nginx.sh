#!/bin/bash

service nginx start
certbot --manual --preferred-challenges=http --manual-auth-hook /home/thieng-proxy/challenges/authenticator.sh --manual-cleanup-hook /home/thieng-proxy/challenges/cleanup.sh -d *.thiengviet.com -d thiengviet.com -m phan.son.tu.1994@gmail.com --agree-tos --non-interactive
echo "daemon off;" >> /etc/nginx/nginx.conf
service nginx restart