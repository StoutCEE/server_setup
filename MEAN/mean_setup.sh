#!/bin/bash

### THIS IS UNTESTED ###

hostip="$(ip addr | grep 'state UP' -A2 | awk '/inet / {print $4}')"

### MongoDB ###

# Import public key
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

# Create a list file
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list

# Reload local package database
apt-get update

# Install latest version of MongoDB
apt-get install -y mongodb-org


### Install some other stuff ###
apt-get install -y git build-essential openssl libssl-dev pkg-config


### Node.JS ###
curl -sL https://deb.nodesource.com/setup_9.x | -E bash -
apt-get install -y nodejs


### Remaining Components ###
npm install -g bower grunt-cli
git clone https://github.com/meanjs/mean.git /opt/mean
cd /opt/mean
sudo npm install
bower --allow-root --config.interactive=false install
grunt