#!/bin/bash
for i in $(ls *.png | sort -V);
do
   num=$(echo "$i" | grep -oE "[0-9]+")
   newFile=$(echo "$i" | sed "s/png/xxd/g")
   xxd $i $newFile
   sed -i "${num}d" $newFile
   xxd -r $newFile new$i
done
