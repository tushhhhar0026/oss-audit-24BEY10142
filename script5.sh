#!/bin/bash
# Script 5: Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Tool you use daily: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe in the power of open source." > $OUTPUT
echo "Using $TOOL every day reminds me that software should be about $FREEDOM." >> $OUTPUT
echo "I aim to build $BUILD and share it freely with the world." >> $OUTPUT
echo "Open source is not just code — it is a responsibility." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------"
cat $OUTPUT
