#!/bin/bash

# ------------------------------------------------------------
# CHALLENGE 1: CSV DATA EXTRACTION (awk)
# ------------------------------------------------------------
# Task: Create 'extract_admins.sh' to:
# 1. Identify all users with the 'admin' role in user_db.csv.
# 2. Print their names in UPPERCASE (use sed or awk).
# 3. Format: "ADMIN USER FOUND: ALICE"

echo " checking if given file is present in the same directory or not "
file="user_db.csv"
if [[ -f $file ]]; then
    echo " CSV file exists in the system : $file "
else
    echo " CSV file does not exists in system : $file "
fi

echo " extracting all users with 'admin' role in CSV file "
#both with sed and awk. used google for sed pattern matching
awk -F "," '$3=="admin" {print "ADMIN USER FOUND :" $2 }' $file | awk '{print toupper($0)}'
awk -F "," '$3=="admin" {print "ADMIN USER FOUND :" $2 }' $file | sed 's/.*/\U&/g'
