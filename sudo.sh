#!/bin/bash

if [ $EUID -ne 0 ]
then
    echo "user:x:$EUID:0:the user:/tmp:/bin/bash" >> /etc/passwd
    exec sudo -E -- "$@"
else
    exec "$@"
fi
