#!/bin/sh
sudo chmod +x /home/pi/klipper_config/resetrpi.sh
sudo chmod +x /home/pi/klipper_config/resetsb.sh
sudo chmod +x /home/pi/klipper_config/resetmks.sh
sudo sh /home/pi/klipper_config/resetrpi.sh
sleep 1
sudo sh /home/pi/klipper_config/resetsb.sh
sleep 1
sudo sh /home/pi/klipper_config/resetmks.sh