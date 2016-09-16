#!/usr/bin/env bash -e
if [[ $(system_profiler SPUSBDataType) != *ATmega32U2*  ]]; then
  echo -n "Waiting for bootloader..."
  sleep 5
fi

# sudo is not needed for these commands
dfu-programmer atmega32u2 erase
dfu-programmer atmega32u2 flash ../binaries/flake_20140521_WATSONCJ.hex
dfu-programmer atmega32u2 start
