#!/bin/sh
# Update mcu SB2040
echo "Create Klipper Firmware for FLY SB2040"
cd /home/pi/klipper
sudo make clean
sudo make KCONFIG_CONFIG=/home/pi/printer_data/config/config.sb2040
echo "Klipper Firmware created for FLY SB2040"
echo "Stop klipper service"
sudo service klipper stop
echo "Start update mcu FLY SB2040"
sudo python3 /home/pi/klipper/lib/canboot/flash_can.py -i can0 -f /home/pi/klipper/out/klipper.bin -u 26ebc95ecedf
echo "Finish update mcu FLY SB2040"
echo "Start klipper service"
sudo service klipper start