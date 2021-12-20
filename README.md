# Reconnect_VPN
1) file "connect_VPN.service" put in the directory "/etc/systemd/system/.." change ExrcStart="your_path"
2) make it executable
3) sudo systemctl daemon-reload
4) sudo systemctl enable finish-yandex.service (for autorun) 
5) file "con.sh" starts start NetworkManager change the id "client_2" to your VPN connection
6) file "def_ip.sh" change the "ip" value to your ip address
7) После каждого запуска системы будет запускаться скрипт который проверяет пинг IP если пинга не проходит он подключает VPN.
