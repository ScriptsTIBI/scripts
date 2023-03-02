#!/bin/bash

# Created by Tibi

# Check if sshd is active

if systemctl is-active ssh > /dev/null 2>&1; then

# Change the default port to 333

sed -i 's/Port 22/Port 333/' /etc/ssh/sshd_config

# Reload sshd to apply the changes

systemctl reload ssh

echo "ssh port changed to 333"

else 
 echo "ssh is not active"
 fi