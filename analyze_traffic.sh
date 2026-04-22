#!/bin/bash

# ------------------------------------------------------------
# CHALLENGE 2: WEB LOG ANALYSIS (grep, sort, uniq)
# ------------------------------------------------------------
# Task: Create 'analyze_traffic.sh' to:
# 1. Find all '401' (Unauthorized) errors in web_traffic.log.
# 2. Extract only the IP addresses of the users who got 401s.
# 3. Sort and count how many times each IP failed.
# 4. Output to 'suspected_attacks.txt'.

echo " checking if given file is present in the same directory or not "
file="web_traffic.log"
if [[ -f $file ]]; then
    echo " File exists in the system : $file "
else
    echo " File does not exists in system : $file "
fi
#data dadded but spaces in prefix
grep "401" $file | awk '{print $1}' | sort | uniq -c > suspected_attacks.txt