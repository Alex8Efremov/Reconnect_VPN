#!/bin/sh


systemctl start NetworkManager
nmcli con up id client_2
sleep 5
/home/lol/Templates/def_ip.sh
