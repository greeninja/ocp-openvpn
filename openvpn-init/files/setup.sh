#!/bin/bash

echo "Copying certs and configs"

cp pki/private/server.key pki/ca.crt /etc/openvpn/server/
cp pki/issued/server.crt /etc/openvpn/server/
cp ta.key /etc/openvpn/server/
cp pki/private/client1.key pki/issued/client1.crt ta.key /etc/openvpn/client/
cp server.conf /etc/openvpn/server/server.conf

echo "Ready to start now..."
