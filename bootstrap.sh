#!/usr/bin/env bash

# Update Packages
apt-get update
# Upgrade Packages
apt-get upgrade

# Basic Linux Stuff
apt-get install -y git

# Apache
apt-get install -y apache2

#Add Onrej PPA Repo
apt-add-repository ppa:ondrej/php
apt-get update

# Install PHP
apt-get install -y php7.2

# PHP Apache Mod
apt-get install -y libapache2-mod-php7.2

# PHP Mods
apt-get install -y php7.2-common
apt-get install -y php7.2-mcrypt
apt-get install -y php7.2-zip

# PHP-MYSQL lib
apt-get install -y php7.2-mysql

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

# Restart Apache
sudo service apache2 restart

#setup versioning
cd /var/www/html

git init

git add .

git reset .vagrant/

git remote add origin git@github.com:cmcgough/newrelictest.git

git commit -m "First commit"

git push -u origin master
