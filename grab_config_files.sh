#!/bin/sh
mkdir -p configuration/nginx configuration/avahi configuration/php configuration/owncloud configuration/kolibri configuration/kiwix configuration/kolibri/service
sudo cp -RL /etc/nginx/* configuration/nginx/
sudo cp -RL /etc/php/* configuration/php/
sudo cp -RL /etc/avahi/* configuration/avahi/
sudo cp -RL /etc/kolibri/* configuration/kolibri/
sudo cp -RL /etc/systemd/system/multi-user.target.wants/kolibri.service configuration/kolibri/service/
sudo cp -RL /lib/systemd/system/kiwix.service configuration/kiwix/
sudo cp -RL /var/www/owncloud/config/* configuration/owncloud/
sudo chown -R pi:pi configuration