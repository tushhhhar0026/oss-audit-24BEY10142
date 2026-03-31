#!/bin/bash
# Script 3: Disk Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR not found"
    fi
done

# Git config directory check
# Git config file check
if [ -f "$HOME/.gitconfig" ]; then
    echo ".gitconfig file found:"
    ls -l $HOME/.gitconfig
else
    echo ".gitconfig file not found"
fi
