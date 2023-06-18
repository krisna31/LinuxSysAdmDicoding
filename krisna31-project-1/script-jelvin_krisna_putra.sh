#!/bin/bash

# while loop so the script run forever until stopped with ctrl+c
while true
do
  # Print memory size in megabytes
  echo "Memory Size:"
  free -m
  sleep 3s

  # Print disk usage in gigabytes
  echo " "
  echo "Disk Usage:"
  df -BG --output=source,size --exclude-type=tmpfs
  sleep 3s

  # Print filesystem usage and Use%
  echo " "
  echo "Filesystem Usage:"
  df -h --output=source,pcent --exclude-type=tmpfs
  sleep 1m
done
