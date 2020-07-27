#!/bin/sh
wget https://download.kiwix.org/release/kiwix-tools/kiwix-tools_linux-armhf.tar.gz
mkdir -p kiwix/kiwix/bin kiwix/kiwix/data/content kiwix/kiwix/data/library
tar -C kiwix/ -xzvf kiwix-tools_linux-armhf-3.1.2-1.tar
mv kiwix/kiwix-tools_linux-armhf-3.1.2-1/* kiwix/kiwix/bin/
rmdir kiwix/kiwix-tools_linux-armhf-3.1.2-1
sudo cp -R kiwix/kiwix /opt/kiwix
sudo ln -s /opt/kiwix/bin/* /usr/bin/
sudo cp kiwix/kiwix.service /lib/systemd/system/kiwix.service
sudo chmod 644 /lib/systemd/system/kiwix.service
sudo systemctl daemon-reload
sudo systemctl enable kiwix.service

# run these after install
#sudo cp kiwix.zim /opt/kiwix/data/content
#sudo kiwix-manage  /opt/kiwix/data/library/library.xml add /opt/kiwix/data/content/ext_data/kiwix_data/wikipedia_en_all_maxi_2018-10.zim
#sudo systemctl start kiwix.service