#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

 if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

prime-offload &
sxhkd &
xss-lock ~/.script/lock.sh &
xrdb ~/.Xresources &
/usr/lib/xfce4/notifyd/xfce4-notifyd &

# start dwm
dwmblocks &
dwm

# start KDE with i3
# export KDEWM=i3 &
# startplasma-X11

# start KDE
# startplasma-X11

# start i3
# ~/.config/polybar/launch.sh &
# i3

