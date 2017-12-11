# server_setup
This repository contains the files for configuring a Linux webserver with LAMP stack. OpenSSH is also installed.

## Requirements ##
 - Debian-based system
 - Internet connection
 - Root privileges
 
## Usage ##
The scripts require root privileges:
```
sudo ./script-name.sh
```

# LAMP Stack Setup #
The LAMP folder contains a script to install and configure LAMP stack. The user must be present to set the MySQL password.

## MySQL Configuration ##
The LAMP folder also contains files for creating the MySQL databases. To import a database, open the terminal and type:
```
mysql -u root -p
```
Once you're logged into the MySQL software, import the file for the database by typing:
```
SOURCE path-to-file.sql;
```
