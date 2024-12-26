#!/bin/bash

if [ "$1" ]; then
        AEM=$1;
else
        AEM=12345;
fi

AEM=$(echo $AEM |cut -c 1-4)

printf $AEM | sha256sum | awk '{print $1}' > hash_output.txt
