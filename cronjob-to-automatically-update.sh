#!/bin/bash

# Create by Tibi

# Here you can modify the command that you want to run

COMMAND="/usr/bin/apt-get update"

# Cron schedule

CRON_SCHEDULE="0 13 * * 1"

# Create a temporary file to hold the job

CRON_FILE=$(mktemp)

# Add the cron job to the file

echo "$CRON_SCHEDULE $COMMAND" >> $CRON_FILE

# Install the cron job

crontab $CRON_FILE

# Remove temporary file

rm -rf $CRON_FILE

# This script will create a cron job that runs apt-get update every Monday at 13:00. You can check cron job using command crontab -l. If you wat to remove the cron job simply run crontab -e and the like that was added by the script. Feel free to modify it for your own needs.
