#!/bin/bash

echo "intiating a connection to THM"

#here we connect to warp
echo "starting warp"
echo "warp result:"
warp-cli connect

#here we connect to THM with openvpn
echo "starting the connection to THM"
sudo openvpn /root/Downloads/shadoworb2016\ \(1\).ovpn &

#here we test the connection
echo "testing the connection:"
ping 10.10.10.10 -c 3

#here we diconnect from warp
echo "closing warp"
warp-cli disconnect

echo "enjoy your room!"



