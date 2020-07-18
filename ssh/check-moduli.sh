#!/bin/bash

filename='/etc/ssh/moduli'
n=1
threshold=2047
echo "Checking for small DH groups (p < $threshold) in $filename..."

while read line; do
    if [[ $line != \#* ]]
    then
        modulus=$(echo $line | awk '{print $5}')
        if [[ modulus -lt $threshold ]]
        then
            echo "bad modulus in $filename: $modulus"
        fi
    fi
    n=$((n+1))
done < $filename
