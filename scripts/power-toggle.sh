#!/bin/bash

TARGET=$1

if [[ "$TARGET" == "wifi" ]]; then
  # Check current status using nmcli radio
  STATUS=$(nmcli radio wifi)
  if [ "$STATUS" = "enabled" ]; then
    nmcli radio wifi off
    echo "Wifi powered OFF"
  else
    nmcli radio wifi on
    echo "Wifi powered ON"
  fi
elif [[ "$TARGET" == "bluetooth" ]]; then
  # Check power state using bluetoothctl
  # We look for "Powered: yes" in the default controller info
  IF_POWERED=$(bluetoothctl show | grep "Powered: yes")
  if [ -n "$IF_POWERED" ]; then
    bluetoothctl power off
    echo "Bluetooth powered OFF"
  else
    bluetoothctl power on
    echo "Bluetooth powered ON"
  fi

else
  echo "Usage: $0 {wifi|bluetooth}"
  exit 1
fi
