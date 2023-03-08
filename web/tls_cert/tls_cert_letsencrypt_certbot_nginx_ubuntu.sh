#!/bin/bash

# https://certbot.eff.org/instructions?ws=nginx&os=ubuntufocal

# Install snapd
sudo apt update
sudo apt install snapd

# Ensure that your version of snapd is up to date
sudo snap install core; sudo snap refresh core

# Remove certbot-auto and any Certbot OS packages
sudo apt-get remove certbot

# Install Certbot
sudo snap install --classic certbot

# Prepare the Certbot command
sudo ln -s /snap/bin/certbot /usr/bin/certbot

# get and install your certificates
sudo certbot --nginx

# Test automatic renewal
sudo certbot renew --dry-run

