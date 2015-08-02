#!/bin/zsh
vim -d $2 $5 > /dev/tty

#mvim --servername GITDIFF --remote-tab-silent +"vertical diffsplit $5|wincmd w" "$2"
#sleep 0.1
# 
#SN=`mvim --serverlist | grep "GITDIFF"`
#until [ "$SN" == "GITDIFF" ]; do
#  sleep 0.1
#  SN=`mvim --serverlist | grep "GITDIFF"`
#done
