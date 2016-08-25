if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)

#xrandr --fbmm 346x194
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 192
xrdb -merge .Xresources
setxkbmap                 #xdotool bug

compton -b
tilda &
nm-applet &
pasystray &
parcellite &
cbatticon -i symbolic -u 1 &

skype &
google-chrome &

exec i3
