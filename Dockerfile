FROM nginx:1.18.0

WORKDIR /home/thieng-proxy

COPY configs/thiengviet.com.conf /etc/nginx/conf.d/

RUN apt-get update
COPY . .

RUN sh packages.sh
# RUN certbot --nginx -d thiengviet.com -m phan.son.tu.1994@gmail.com --agree-tos --non-interactive

# EXPOSE 80
# EXPOSE 443
# CMD [ "certbot", "--nginx", "-d", "thiengviet.com", "-m", "phan.son.tu.1994@gmail.com", "--agree-tos", "--non-interactive"]
CMD [ "service", "nginx", "start" ]