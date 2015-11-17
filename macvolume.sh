#!/bin/bash
##
## http://sonof8bits.com/
##
## Always wanted to control the volume of your Mac from the command line prompt?
## Well, the option was always there. What, you didn't know?
## But admittedly it was a bit of a pain in the behind. But now we have this script,
## rejoice!
##
## Usage:
## Create an alias in .profile:
##  alias volume=~/script/macvolume.sh
## Or wherever you put this script.
## Then enter volume 0 - 10.
## 0 is mute. 10 is the loudest setting. Decimals are allowed!


if [[ $1 == [0-10] ]]
then
	osascript -e "set Volume $1"
fi

if [[ $1 -gt 10 ]]
then
	printf "
	Pick any number from 0 (mute) - 10 (Loud as f*ck) \n"
fi

if [[ $1 -lt 0 ]]
then
	printf "
	Pick any number from 0 (mute) - 10 (Loud as f*ck) \n"
fi

exit
