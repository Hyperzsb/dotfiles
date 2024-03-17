#!/bin/bash

TARGET_FILE=$HOME/.gitconfig
DESTINATION_FILE=./.gitconfig

if [[ ! -f "$TARGET_FILE" ]]; then
    echo "$TARGET_FILE not found. Aborting."
    exit
fi

if ! type git > /dev/null; then
    echo "git not installed. Aborting."
    exit
fi

cp "$TARGET_FILE" "$DESTINATION_FILE"
# Remove sensitive data
# Sed approach
sed -i "" "s/signingkey.*$/signingkey = <gpg_key_id>/g" "$DESTINATION_FILE"
# Vim approach
#vim -c "%s/signingkey.*$/signingkey = <gpg_key_id>/g" "$DESTINATION_FILE" -c "wq"

echo "$TARGET_FILE updated."
