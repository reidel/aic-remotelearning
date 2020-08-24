#!/bin/sh
sudo apt-get update
sudo apt-get upgrade -y

# avahi for Bonjour ZeroConfiguration protocol
sudo apt install avahi-autoipd avahi-daemon avahi-discover avahi-dnsconfd avahi-ui-utils avahi-utils -y

# authbind to properly secure use of system network ports
sudo apt install authbind -y

# NGINX
sudo apt install nginx openssl ssl-cert -y

# owncloud requirements
sudo apt install mariadb-client mariadb-server php-xml php-dev php-curl php-gd php-fpm php-zip php-intl php-mbstring php-cli php-mysql php-common php-cgi php-apcu php-redis redis-server php-pear curl libapr1 libtool libcurl4-openssl-dev -y
sudo usermod -a -G www-data www-data
sudo usermod -a -G www-data pi
sudo mysql_secure_installation

# ownCoud actual using debian repositories
wget -nv https://download.owncloud.org/download/repositories/production/Debian_10/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo su -c "echo 'deb http://download.owncloud.org/download/repositories/production/Debian_10/ /' > /etc/apt/sources.list.d/owncloud.list"
sudo apt-get update
sudo apt-get install owncloud-files
rm Release.key


# kolibri
sudo apt-get install dirmngr -y
sudo su -c 'echo "deb http://ppa.launchpad.net/learningequality/kolibri/ubuntu cosmic main" > /etc/apt/sources.list.d/learningequality-ubuntu-kolibri-cosmic.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys DC5BAA93F9E4AE4F0411F97C74F88ADB3194DD81
sudo apt-get update
sudo apt-get install kolibri -y
