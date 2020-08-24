#!/bin/sh
sudo openssl req $@ -new -x509 -days 730 -nodes -out /etc/nginx/cert.pem -keyout /etc/nginx/cert.key
sudo openssl dhparam -out /etc/nginx/dh2048.pem 2048
sudo chmod 600 /etc/nginx/cert.pem
sudo chmod 600 /etc/nginx/cert.key
sudo chmod 600 /etc/nginx/dh2048.pem

mysql -h localhost -u root database < init-owncloud.sql
