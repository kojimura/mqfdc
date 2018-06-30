#!/bin/bash

# Simplify all MQ FDC files in spesified directory
# usage: amqfdc.sh /var/mqm/errors/

fdcPath=$1

for filename in ${fdcPath}*.FDC; do
  echo "${filename}"
  mqfdc < $filename
done
