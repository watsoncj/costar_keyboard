#!/usr/bin/env bash -xe
echo "Use both shift keys to enter bootloader"
dfu-programmer atmega32u2 erase
dfu-programmer atmega32u2 flash ../binaries/flake_20140521_WATSONCJ.hex
dfu-programmer atmega32u2 start
