#!/bin/bash

echo "Cleaning screenshots on Desktop"

PWD=$(pwd)

cd ~/Desktop
DATE=$(date +%F)
FOLDER=${DATE}-screenshots
SCREENSHOTS=$(ls Screen\ Shot*)
SCREENSHOTS_COUNT="${#SCREENSHOTS[@]}"

echo "Found ${SCREENSHOTS_COUNT} screenshots"

if [ ! -d "$FOLDER" ]
then
	mkdir $FOLDER
fi

for PIC in "${SCREENSHOTS[@]}"
do
	mv "$PIC" "$FOLDER"
done

echo "Moved all screenshots to ${FOLDER}"
cd $PWD
exit 0
