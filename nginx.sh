#!/bin/bash

chmod 600 /home/thieng-proxy/cloudflare.ini
certbot certonly --dns-cloudflare --dns-cloudflare-credentials /home/thieng-proxy/cloudflare.ini -d *.thiengviet.com -d thiengviet.com -m phan.son.tu.1994@gmail.com --non-interactive
echo "daemon off;" >> /etc/nginx/nginx.conf
service nginx start