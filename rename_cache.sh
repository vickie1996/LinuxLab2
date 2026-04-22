#!/bin/bash


# ------------------------------------------------------------
# CHALLENGE 4: THE BULK RENAMER (for loops, sed)
# ------------------------------------------------------------
# Task: Create 'rename_cache.sh' to:
# 1. Look into the 'cache/' folder.
# 2. Find all files ending in '.tmp'.
# 3. Rename them to end in '.old' instead.
#    (Example: data_tmp.tmp -> data_tmp.old)

echo " checking if given file is present in the same directory or not "
file="cache/"
if [[ -d $file ]]; then
    echo " Folder exists in the system : $file "
else
    echo " Folder does not exists in system : $file "
fi

for txtfile in cache/*.tmp
do
    echo " following files present in the folder: $txtfile "
    echo " renaming the file with .old as an extension "
    sed 's/.tmp/.old/g' $txtfile
done