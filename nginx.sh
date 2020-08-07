service nginx start
certbot --nginx -d thiengviet.com -d api.thieng.com -m phan.son.tu.1994@gmail.com --agree-tos --non-interactive
echo "daemon off;" >> /etc/nginx/nginx.conf
service nginx restart