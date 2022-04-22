#!/bin/bash

if [ -f "aggregated.conf" ]; then
  rm aggregated.conf
fi

for file in $PWD/*.conf; do
  echo "$file"
  if [ -f "$file" ]; then
    echo "conf-file $file" >> aggregated.conf
  fi
done
