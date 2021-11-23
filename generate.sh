#!/bin/bash

WEB_IP="172.20.168.252"

for file in ./data/*.txt; do
  if [ -f "$file" ]; then
    while read p; 
    do
      if [[ "$p" != "#"* ]] && ! test -z "$p"; then
        echo "address /$p/#6" >> prevent-brain-upgrade.conf
        echo "address /$p/$WEB_IP" >> prevent-brain-upgrade.conf
      fi
    done <$file
  fi
done
