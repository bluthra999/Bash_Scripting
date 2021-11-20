#! /usr/bin/env bash

j=`date|cut -d " " -f7`
#k=`date +"%Y"`

for i in $*
do
cal $i $j
#cal $i $k alt method , perhaps easier
done

