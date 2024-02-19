#!/bin/bash

cp demo-dynamic-user.service /etc/systemd/system/demo-dynamic-user.service
cp demo-dynamic-user.sh /usr/local/bin
chmod +x /usr/local/bin/demo-dynamic-user.sh

systemctl daemon-reload
systemctl stop demo-dynamic-user.service
systemctl start demo-dynamic-user.service


journalctl -u demo-dynamic-user.service -n 50