#!/usr/bin/bash

FROM=${1:-1}
TO=${2:-254}

echo "loop range $FROM ... $TO"

for i in $(seq $FROM $TO); do 
    echo -n "trying to connect to 192.168.178.$i ... "
    X=$(timeout 3 ssh pi@192.168.178.$i -p 1 2>&1)
    if [ "$X" ]; then 
        echo OK
        break; 
    else 
        echo timeout
    fi; 
done

