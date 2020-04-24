#!/bin/bash
RED_TEXT="\e[31m"
CLR_FORMAT="\e[0m"
NET_ID="Your_Net_ID_Here"

echo 'Saving lab files.'
read -p 'Lab number: ' lab
read -p 'Lab part #: ' part
read -p 'Is this the last part [Y,n] ? ' last
echo -e 'Saving...'

if [ -z "$lab" ] 
then
    echo -e "${RED_TEXT}Must have a lab number.${CLR_FORMAT}";
    exit 1;
fi

if [ -z "$part" ] 
then
    echo -e "${RED_TEXT}Must have a part number.${CLR_FORMAT}";
    exit 1;
fi

echo 'Copying current files to turnin...';
cp source/main.c turnin/${NET_ID}_lab"$lab"_part"$part".c
cp test/tests.gdb turnin/${NET_ID}_lab"$lab"_part"$part"_tests.gdb
echo 'Done.'
echo

echo 'Saving to GitHub...'
git add turnin/ .
git commit -m '"Completed part '"$part"'"'
git status
git push
echo 'Done.'
echo

if [ $last = Y ] || [ $last = y ]
then
    echo 'Creating turnin.zip...'
    cd turnin
    zip ../turnin *
    echo -e "\e[42mDone.${CLR_FORMAT}"
fi