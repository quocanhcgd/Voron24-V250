#!/bin/sh
cd /home/pi/klipper
# Update mcu rpi
echo "Start update mcu rpi"
echo ""
sudo make clean
sudo service klipper stop
#sudo make menuconfig KCONFIG_CONFIG=/home/pi/klipper_config/script/config.linux_mcu
#sudo make KCONFIG=/home/pi/klipper_config/script/config.linux_mcu
sudo make flash KCONFIG_CONFIG=/home/pi/klipper_config/script/config.linux_mcu
#sudo make flash
sudo service klipper start
echo "Finish update mcu rpi"
echo ""