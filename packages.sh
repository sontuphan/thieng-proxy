#!/bin/bash

# Exit when any installment failed.
set -e

# Update system
apt-get update

# Install utils
apt-get install -y vim
apt-get install -y iputils-ping

# Install certbot
apt-get install -y certbot python-certbot-nginx
