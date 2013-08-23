#!/bin/bash
# Ubuntu is messing with my resolutions in the VM
#


case $1 in
  big)
    cvt 1680 1050 60
    xrandr --newmode "1680x1050_60.00"  146.25  1680 1784 1960 2240  1050 1053 1059 1089 -hsync +vsync
    xrandr --addmode VBOX0 1680x1050_60.00
    xrandr --output VBOX0 --mode 1680x1050_60.00;;
  normal)
    cvt 1280 1024 60
    xrandr --newmode "1280x1024_60.00"  109.00  1280 1368 1496 1712  1024 1027 1034 1063 -hsync +vsync
    xrandr --addmode VBOX0 1280x1024_60.00
    xrandr --output VBOX0 --mode 1280x1024_60.00;;
  *)
    cvt 1280 800 60
    xrandr --newmode "1280_800_60" 83.50  1280 1352 1480 1680  800 803 809 831 -hsync +vsync
    xrandr --addmode VBOX0 1280_800_60
    xrandr --output VBOX0 --mode 1280_800_60;;
esac

