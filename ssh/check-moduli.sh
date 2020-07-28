#!/bin/bash

filename='/etc/ssh/moduli'
n=1
threshold=2047
echo "Checking for small DH groups (p < $threshold) in $filename..."

FOUNDBAD=0

while read line; do
    if [[ $line != \#* ]]
    then
        modulus=$(echo $line | awk '{print $5}')
        if [[ modulus -lt $threshold ]]
        then
            FOUNDBAD=1
        fi
        echo -n "."
    fi
    n=$((n+1))
done < $filename
echo

if [ $FOUNDBAD -eq 1 ]
then
    echo "Found bad modulus in $filename"
fi
