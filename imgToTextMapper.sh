#!/bin/bash
while((1))
do
for e in *.png
do
fname=$(echo $e | cut -d'.' -f1)
if [ ! -f "$fname.txt" ]
then
echo "Processing it- $fname"
tesseract -l eng "$e" "$fname"
fi
done
sleep 5s
done
