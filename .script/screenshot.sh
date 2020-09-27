#!/bin/sh

TYPE="$(printf "Screen\nWindow/Area\n" | dmenu -i -p 'What do you want to screenshot?')"
[ -z "$TYPE" ] && exit
SAVE="$(printf "No\nYes" | dmenu -i -p 'Do you want to copy to clipboard?')"
[ -z "$SAVE" ] && exit
TIME="$(printf "0.7\n5\n10\n15" | dmenu -i -p 'How many seconds you want to wait?')"
[ -z "$TIME" ] && exit

case "$TYPE" in
	Window/Area) TYPE="-s -u";;
	*) TYPE=""
esac

mkdir -p ~/Screenshot
sleep "$TIME"

case "$SAVE" in
	Yes) maim $TYPE | xclip -selection clipboard -t image/png;;
	*) maim $TYPE ~/Screenshot/"$(date +%G-%m-%d_%s.png)"
esac
