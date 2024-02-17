#!/bin/sh
# Update MKS Monster 8 V2
echo "Check Mode of GPIO"
gpio mode 25 out
echo "Run MKS Monster 8 V2 to Canboot mode"
sudo gpio -g write 26 0
sudo gpio -g write 26 1
sleep 0.1
sudo gpio -g write 26 0
sudo gpio -g write 26 1

cd /home/pi/klipper
sudo make clean
#make menuconfig KCONFIG_CONFIG=/home/pi/printer_data/config/config.mksM8v2
echo "Stop klipper service"
sudo service klipper stop
echo "Create firmware for MKS Monster 8 V2"
sudo make KCONFIG_CONFIG=/home/pi/printer_data/config/config.mksM8v2
echo "Start update mcu Mks Monster 8 V2"
sudo python3 /home/pi/CanBoot/scripts/flash_can.py -d /dev/serial/by-id/usb-CanBoot_stm32f407xx_3A002E001750475532323720-if00 -f /home/pi/klipper/out/klipper.bin
echo "Finish update mcu Mks Monster 8 V2"
echo "Start klipper service"
sudo service klipper start