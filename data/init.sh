#!/usr/bin/env bash

sudo -i
export DEBIAN_FRONTEND=noninteractive
echo "********** Updating **********"
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
echo "********** Installing Apache2 **********"
apt-get -y install apache2
echo "********** Installing MySQL **********"
apt-get -q -y install mysql-server
echo "********** Installing PHP5 **********"
apt-get -q -y install php5 libapache2-mod-php5 php5-gd php5-mysql

echo "********** Installing ArtWeb **********"
cd /var/www/html/

if [ -d "/var/www/html/ArtWeb/" ]; then
	echo "********** Updating the existing copy **********"
	cd /var/www/html/ArtWeb/
	git pull --rebase
	php -r "readfile('https://getcomposer.org/installer');" | php
	php composer.phar update
fi

if [ ! -d "/var/www/html/ArtWeb/" ]; then
	echo "********** Cloning new copy **********"
	cd /var/www/html/
	git clone https://github.com/aazhbd/ArtWeb.git
	cd /var/www/html/ArtWeb/
	php -r "readfile('https://getcomposer.org/installer');" | php
	php composer.phar install
fi


if ! mysql -u root -e 'use dbname'; then
	echo "create database dbname;" | mysql -u root
	echo "********** Database created **********"
fi

service apache2 restart

cat /var/www/html/logo.txt
