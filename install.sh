#!/usr/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Please give me the root power!"
    exit 1
fi

cp broadcomctl /usr/local/bin/
cp broadcom.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable broadcom
