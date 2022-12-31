#!/bin/bash

TARGET_FILES=("$HOME/.oh-my-zsh/custom/banner.zsh" "$HOME/.oh-my-zsh/custom/themes/ys.zsh-theme")
DESTINATION_FILES=("./.oh-my-zsh/banner.zsh" "./.oh-my-zsh/themes/ys.zsh-theme")

for i in $(seq ${#TARGET_FILES[*]});
do
    if [ -f "${TARGET_FILES[i - 1]]}" ] 
    then
        cp "${TARGET_FILES[i - 1]]}" "${DESTINATION_FILES[i - 1]]}"
        echo "${TARGET_FILES[i - 1]]} updated."
    else
        echo "${TARGET_FILES[i - 1]]} not found."
    fi
done

