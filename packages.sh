#!/bin/bash

# Exit when any installment failed.
set -e

# Update system
apt-get update

# Install vim
apt-get install -y vim

# Install certbot
apt-get install -y certbot python-certbot-nginx
