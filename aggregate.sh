#!/bin/bash

rm aggregated.conf

for file in $PWD/*.conf; do
  echo "$file"
  if [ -f "$file" ]; then
    echo "conf-file $file" >> aggregated.conf
  fi
done
