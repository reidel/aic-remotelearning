#!/bin/sh
wget https://download.kiwix.org/release/kiwix-tools/kiwix-tools_linux-armhf.tar.gz
mkdir -p kiwix/bin kiwix/data/content kiwix/data/library
tar -xzvf kiwix-tools_linux-armhf.tar.gz
mv kiwix-tools_linux-armhf-*/* kiwix/bin/
rmdir kiwix-tools_linux-armhf-*
find . -type f -name 'kiwix-tools_linux-armhf*.tar.gz' -exec rm {} +
sudo cp -R kiwix /opt/kiwix
sudo ln -s /opt/kiwix/bin/* /usr/bin/
sudo cp configuration/kiwix/kiwix.service /lib/systemd/system/kiwix.service
sudo chmod 644 /lib/systemd/system/kiwix.service
sudo systemctl daemon-reload
sudo systemctl enable kiwix.service

# run these after install
#sudo cp kiwix.zim /opt/kiwix/data/content
#sudo kiwix-manage  /opt/kiwix/data/library/library.xml add /opt/kiwix/data/content/ext_data/kiwix_data/wikipedia_en_all_maxi_2018-10.zim
#sudo systemctl start kiwix.service
#sudo kiwix-manage /opt/kiwix/data/library/library.xml add /opt/kiwix/data/content/wikipedia_en_100_maxi_2020-07.zim
