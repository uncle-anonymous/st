#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
# . /etc/X11/Xsession
# export LC_CTYPE=en_US.UTF-8
# export LANG=en_US.UTF-8
eval "dbus-launch --sh-syntax --exit-with-session" &
export GTK_IM_MODULE=fcitx &
export QT_IM_MODULE=fcitx &
export XMODIFIERS=@im=fcitx &
#fcitx &   #使用fcitx中文输入法
numlockx &   #自动自动开启数字键盘
exec dwm
