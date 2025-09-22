#!/bin/bash
 
HOST=www.ood.edu
PORT=80
 
(echo >/dev/tcp/${HOST}/${PORT}) &>/dev/null
if [ $? -eq 0 ]; then
    echo "Connection successful"
else
    echo "Connection unsuccessful"
fi
