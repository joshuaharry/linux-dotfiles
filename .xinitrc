#!/bin/sh
feh --randomize --bg-scale ~/.config/wallpaper/wallpaper
wal -l --theme solarized
xrdb -merge ~/.Xresources
setxkbmap -option caps:swapescape -option ctrl:ralt_rctrl
exec awesome
