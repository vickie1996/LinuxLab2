#!/bin/bash


# ------------------------------------------------------------
# CHALLENGE 3: SYSTEM ALERT TRIGGER (if/else, awk)
# ------------------------------------------------------------
# Task: Create 'monitor_health.sh' to:
# 1. Read the DISK_USAGE percentage from system_health.txt.
# 2. If the usage is GREATER THAN 90%, print "CRITICAL: Disk Space Low!"
# 3. Otherwise, print "System healthy".


echo " checking if given file is present in the same directory or not "
file="system_health.txt"
if [[ -f $file ]]; then
    echo " File exists in the system : $file "
else
    echo " File does not exists in system : $file "
fi
usage=$(awk '$1=="DISK_USAGE:" {print $2}' $file | sed 's/%//g')
echo " disk usage is: $usage "
if [[ $usage -gt "90" ]]; then
    echo " CRITICAL: Disk Space Low! "
else
    echo " System healthy "
fi