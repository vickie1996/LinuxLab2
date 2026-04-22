#!/bin/bash


# ------------------------------------------------------------
# CHALLENGE 5: DYNAMIC USER WELCOME (read, case)
# ------------------------------------------------------------
# Task: Create 'user_search.sh' to:
# 1. Ask the student to enter a username (using 'read').
# 2. Search user_db.csv for that user.
# 3. If found, print their Role and Status.
# 4. If not found, print "User does not exist in database."

#echo "
read -p " Enter the username: " username
echo " username entered by user is : $username "

echo " checking if given file is present in the same directory or not "
file="user_db.csv"
if [[ -f $file ]]; then
    echo " File exists in the system : $file "
else
    echo " File does not exists in system : $file "
fi

echo " Searching the user in the $file "
userfound=$(awk -F "," -v user="$username" '$2==user {print $3, $4}' $file)
if [[ "$userfound" != "" ]]; then
    echo " User found with Role and Status details: $userfound "
else
    echo " User not found in database. "
fi