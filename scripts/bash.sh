#!/bin/bash

TARGET_FILE=$HOME/.bashrc
DESTINATION_FILE=./.bashrc

if [ -f "$TARGET_FILE" ] 
then
    cp "$TARGET_FILE" "$DESTINATION_FILE"
    echo "$TARGET_FILE updated."
else
    echo "$TARGET_FILE not found."
fi
