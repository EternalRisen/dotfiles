# Copyright (c) 2018-2020, Dawid Potocki

# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.

# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.


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
