#!/bin/bash

if [ $EUID -ne 0 ]
then
    echo "adding user $EUID"
    echo "user:x:$EUID:0:the user:/tmp:/bin/bash" >> /etc/passwd
    id
    echo "running sudo -E '$@'"
    exec sudo -E "$@"
else
    echo "running '$@'"
    exec "$@"
fi
