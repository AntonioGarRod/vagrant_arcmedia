#!/usr/bin/env bash

###### Prepare and install localhost, php, mysql, etc - more info ---->  http://drupalalsur.org/apuntes/como-instalar-un-servidor-lamp-en-ubuntu-1404 ######
apt-get -qq update
apt-get upgrade
apt-get -y install apache2
apt-get -y install unzip git
apt-get -y install apache2 php5 libapache2-mod-php5 php5-mcrypt php5-cli php5-curl php5-intl php5-xsl php-pear php5-xdebug phpunit php5-dev
apt-get -y install memcached php5-memcached
pecl install xdebug