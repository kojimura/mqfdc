#!/bin/bash

# Simplify all MQ FDC files in spesified directory
# usage: mqfdc.sh /var/mqm/errors/

fdcPath=$1

for filename in ${fdcPath}*.FDC; do
 echo "${filename}"
 awk '{if($2=="Date/Time" || 
	$2=="Probe" && $3=="Id" || 
	$2=="Component" || 
	$2=="Program" && $3=="Name" || 
	$2=="Major" && $3=="Errorcode") 
	print }' < ${filename}
done
