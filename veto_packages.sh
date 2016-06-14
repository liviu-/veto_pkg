#!/usr/bin/env/ bash

if [[ $# -eq 0 ]] ; then
    echo 'Please specify the name of the package'
    exit 1
fi
pacman -Qi $1

read -p $'[K]eep | [U]ninstall | Uninstall with [D]ependencies | Uninstall Dependencies [R]ecursively\n' option
case $option in 
    [Kk]* ) break;;
    [Uu]* ) sudo pacman -R $1;;
    [Dd]* ) sudo pacman -Rs $1;;
    [Rr]* ) sudo pacman -Rsc $1;;
    * ) echo "Please answer K, U, D, or R";;
esac
