#!/bin/bash

WEB_IP="172.20.168.252"

echo "# Brain Upgrade List" > prevent-brain-upgrade.conf

for file in ./blacklists/*.txt; do
  if [ -f "$file" ]; then
    while read p; 
    do
      if [[ "$p" != "#"* ]] && ! test -z "$p"; then
	pp=`echo $p | sed 's/\r//g'`
        echo "address /$pp/#6" >> prevent-brain-upgrade.conf
        echo "address /$pp/$WEB_IP" >> prevent-brain-upgrade.conf
      fi
    done <$file
  fi
done
