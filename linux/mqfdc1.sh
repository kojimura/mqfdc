#!/bin/bash

# Simplify all MQ FDC files in spesified directory
# usage: mqfdc1.sh 
#        mqfdc1.sh /var/mqm/errors

scriptPath=$(cd $(dirname $0) && pwd)
#echo ${scriptPath}

if [ $# == 0 ]; then
	fdcPath="."
else 
# if last char is "/" remove it!
#	gsub(/\/$/,//,$1)
	fdcPath=$1
fi


for filename in ${fdcPath}/*.FDC; do
#	echo "${filename}"
	awk -f ${scriptPath}/mqfdc1.awk ${filename}
done
