#!/bin/bash
# Script 2: Package Inspector

PACKAGE="git"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | awk -v pkg="$PACKAGE" '$2==pkg {print}'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control revolutionizing collaboration" ;;
    apache2) echo "Apache: backbone of the web" ;;
    mysql) echo "MySQL: database powering apps" ;;
    firefox) echo "Firefox: open web advocate" ;;
esac
