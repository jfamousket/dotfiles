#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# increase trackpoint speed (Note: get id = 15 using this command 'xinput --list --short')
xinput --set-prop "15" "libinput Accel Speed" 0.45

# set key repeat rate. delay 280 milisecond, 40 per sec
xset r rate 280 40
# set key repeat rate to default. 25 per sec, 660 milisecond delay
# xset r rate

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# start some nice programs
st -geometry 80x50+494+51 &
st -geometry 80x20+494-0 &
xrandr --dpi 144 &
redshift &
setxkbmap -option caps:escape &
setxkbmap -option caps:escape &
#exec wingo
exec /usr/bin/awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
