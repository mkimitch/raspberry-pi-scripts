#!/usr/bin/bash

set -e

echo "Downloading shuitdown.py and shutdown.sh ... \n"
sudo wget https://cdn.jsdelivr.net/gh/mkimitch/raspberry-pi-scripts@latest/shutdown.py
sudo wget https://cdn.jsdelivr.net/gh/mkimitch/raspberry-pi-scripts@latest/shutdown.sh

echo "Moving shutdown.py to /usr/local/bin/ ... \n"
sudo mv shutdown.py /usr/local/bin/
sudo chmod +x /usr/local/bin/shutdown.py

echo "Moving shutdown.sh to /etc/init.d/ ... \n"
sudo mv shutdown.sh /etc/init.d/
sudo chmod +x /etc/init.d/shutdown.sh

echo "Updating defaults and starting script ... \n"
sudo update-rc.d shutdown.sh defaults
sudo /etc/init.d/shutdown.sh start

echo "Done!\n"