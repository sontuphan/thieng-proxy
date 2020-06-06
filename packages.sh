#!/bin/bash

# Exit when any installment failed.
set -e

# Update system
sudo apt-get update

# Install certbot
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot python3-certbot-nginx
# Setup certbot to nginx
sudo certbot --nginx
