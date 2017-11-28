#!/bin/bash

hostip="$(ip addr | grep 'state UP' -A2 | awk '/inet / {print $4}')"

apt-get update


### LAMP STACK INSTALL ###

# Installing Apache2
apt-get -y install apache2
# Add host IP to Apace2 Config File
echo ServerName $hostip >> /etc/apace2/apache2.conf
# Check for errors and restart Apache2
apache2ctl configtest
systemctl restart apache2
# Adjust Firewall to Allow Traffic
ufw allow in "Apache Full"
# Installing MySQL
apt-get -y install mysql-server
# Installing PHP and dependencies
apt-get -y install php libapache2-mod-php php-mcrypt php-mysql
# Copy properly configured file to Apache2 directory
cp dir.conf /etc/apache2/mods-enabled/dir.conf
# Restart Apache2
systemctl restart apache2
# Interactive Secure Installation Script - Interactive
#mysql_secure_installation


## ALLOW SSH CONNECTIONS ##
apt-get -y install openssh-server


## INSTALL XFCE DESKTOP ENVIRONMENT ##
apt-get -y install openssh-server
