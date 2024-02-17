#!/bin/sh
# Update MKS Monster 8 V2
gpio mode 25 out
sudo gpio -g write 26 0
sudo gpio -g write 26 1
