#!/bin/bash

service nginx start
chmod +x /home/thieng-proxy/challenges/authenticator.sh
chmod +x /home/thieng-proxy/challenges/cleanup.sh
certbot certonly --manual --preferred-challenges=dns --manual-auth-hook /home/thieng-proxy/challenges/authenticator.sh --manual-cleanup-hook /home/thieng-proxy/challenges/cleanup.sh -d *.thiengviet.com -d thiengviet.com -m phan.son.tu.1994@gmail.com --agree-tos --non-interactive --expand
# certbot --nginx -d thiengviet.com -m phan.son.tu.1994@gmail.com --agree-tos --redirect --non-interactive
echo "daemon off;" >> /etc/nginx/nginx.conf
service nginx restart