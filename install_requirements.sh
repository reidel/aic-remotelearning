#!/bin/sh
sudo apt-get update
sudo apt-get upgrade -y

# avahi for Bonjour ZeroConfiguration protocol
sudo apt install avahi-autoipd avahi-daemon avahi-discover avahi-dnsconfd avahi-ui-utils avahi-utils -y

# owncloud
sudo apt install nginx openssl ssl-cert php-xml php-dev php-curl php-gd php-fpm php-zip php-intl php-mbstring php-cli php-mysql php-common php-cgi php-apcu php-redis redis-server php-pear curl libapr1 libtool libcurl4-openssl-dev -y
sudo usermod -a -G www-data www-data
sudo usermod -a -G www-data pi

# kolibri
sudo apt-get install dirmngr -y
sudo su -c 'echo "deb http://ppa.launchpad.net/learningequality/kolibri/ubuntu cosmic main" > /etc/apt/sources.list.d/learningequality-ubuntu-kolibri-cosmic.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys DC5BAA93F9E4AE4F0411F97C74F88ADB3194DD81
sudo apt-get update
sudo apt-get install kolibri -y