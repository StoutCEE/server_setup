# server_setup
This repository contains the files for configuring a Linux webserver with LAMP stack. OpenSSH is also installed.

## Requirements ##
 - Debian-based system
 - Internet connection
 - Root privileges
 - GitHub account (for cloning this repository)

# Downloading Repository #
First, the commands and scripts need to be run as root:
```
sudo su
```
As root user, copy the following commands into the terminal. 
```
apt-get update && apt-get upgrade
apt-get -y install git
cd / && git clone https://github.com/StoutCEE/server_setup/ ./cee_setup
chmod u+x /cee_setup/setup.sh
cd /cee_setup && ./setup.sh
```

# MySQL Configuration #
The LAMP folder also contains files for creating the MySQL databases. To import a database, open the terminal and type:
```
mysql -u root -p
```
Once you're logged into the MySQL software, import the file for the database by typing:
```
SOURCE path-to-file.sql;
```
