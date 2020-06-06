#!/bin/bash

# Exit when any installment failed.
set -e

# Update system
apt-get update

# Install certbot
apt-get install software-properties-common
add-apt-repository universe
add-apt-repository ppa:certbot/certbot
apt-get update
apt-get install certbot python3-certbot-nginx
# Setup certbot to nginx
certbot --nginx
