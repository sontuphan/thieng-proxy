#!/bin/bash

sudo docker build -t thieng-proxy .
sudo docker tag thieng-proxy:latest tuphanson/thieng-proxy:latest
sudo docker push tuphanson/thieng-proxy:latest