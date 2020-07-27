# Thieng Proxy

## Build docker

```
sudo sh docker.sh
```

## Start docker

```
docker run -it -p 80:80 -p 443:443 -v /etc/letsencrypt:/etc/letsencrypt -w /home/thieng-proxy --name proxy tuphanson/thieng-proxy bash
```

## Activate HTTPS

```
certbot --nginx -d thiengviet.com -m phan.son.tu.1994@gmail.com --agree-tos --redirect --non-interactive
service nginx restart
```

## Maintain network

Create a network
  
```
docker network create --driver bridge --subnet 172.18.0.0/16 --gateway 172.18.0.1 thieng-net
```

Connect containers

```
docker network connect --ip 172.18.0.2 thieng-net proxy
docker network connect --ip 172.18.0.3 thieng-net api
docker network connect --ip 172.18.0.4 thieng-net app
```

IP table


| # | Container name | IP           | Port   |
| - | -------------- | ----------:| ------:|
| 1 | proxy          | 172.18.0.2 | 80/443 |
| 2 | api            | 172.18.0.3 | 3001   |
| 3 | app            | 172.18.0.4 | 3000   |
  