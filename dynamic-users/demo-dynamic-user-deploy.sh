#!/bin/bash

cp demo-dynamic-user.service /etc/systemd/system/demo-dynamic-user.service
cp demo-dynamic-user.sh /usr/local/bin
chmod +x /usr/local/bin/demo-dynamic-user.sh

cp demo-dynamic-user-attacker.service /etc/systemd/system/demo-dynamic-user-attacker.service
cp demo-dynamic-user-attacker.sh /usr/local/bin
chmod +x /usr/local/bin/demo-dynamic-user-attacker.sh

systemctl daemon-reload
systemctl stop demo-dynamic-user.service
systemctl start demo-dynamic-user.service

systemctl stop demo-dynamic-user-attacker.service
systemctl start demo-dynamic-user-attacker.service


journalctl -u demo-dynamic-user.service -n 50
journalctl -u demo-dynamic-user-attacker.service -n 50

