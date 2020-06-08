# Thieng Proxy

## Build docker

```
sudo sh docker.sh
```

## Start docker

```
docker run -it -p 80:80 -p 443:443 -v /etc/letsencrypt:/etc/letsencrypt -w /home/thieng-proxy --name proxy tuphanson/thieng-proxy bash
```