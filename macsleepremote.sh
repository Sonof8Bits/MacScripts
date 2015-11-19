#!/bin/bash
##
## http://sonof8bits.com/
##
## Have one of those Macs that won't stay asleep and randomly wakes up?
## Don't feel like getting out of bed to turn it back off?
## But do have a laptop or tablet handy? I got the solution.
##
## Usage:
## - Make an alias on your device:
##   alias rsleep=~/scripts/macsleepremote.sh
##   Type rsleep to put the offending mac to sleep.
##   Or just run this script if you don't feel like making an alias.
##   Don't forget to enter your info below!


## Enter your Mac's IP or name:
server=192.168.0.1

## Enter your Mac's SSH port:
port=22

finder='"Finder"'
command="'tell application $finder to sleep'"
ssh -p "$port" "$server" osascript -e "$command" "$bye"

exit
