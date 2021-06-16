#!/bin/bash

ip=$(route -n | awk '$4 == "UG" {print $2}')
if [[ ${ip} = "192.168.1.1" ]]; then
  printf "WSL Bridge Mode Activated...\n\n"
# Check if we have Windows Path
elif ( which cmd.exe >/dev/null ); then
  read -p "Activate Bridge Mode? " -n 1 -r
  echo
  if  [[ $REPLY =~ ^[Yy]$ ]] 
  then
    sudo /usr/bin/start-WSLBridge
  fi 
fi
