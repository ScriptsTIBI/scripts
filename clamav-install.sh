#!/bin/bash

# Created by Tibi

# Installing Clamav Anti-Virus

apt-get update
apt-get install clamav clamav-daemon -y

# Update virus

freshclam

# This will setup automatic updates for virus

echo "0 13 * * 1 /usr/bin/freshclam" | tee -a /etc/crontab > /dev/null

# Restart Clamav

systemctl restart clamav-freshclam
systemctl restart clamav-daemon
