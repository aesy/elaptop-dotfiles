PATH=${PATH}:${HOME}/bin

xrandr --auto
xsetroot -cursor_name left_ptr # Change background cursor from X to pointer
wmname LG3D # Java GUI render fix for tiled window managers
xset s off -dpms # Prevent monitor sleep

feh --bg-scale ~/Pictures/Wallpaper/active.jpg &
polybar main &
sxhkd -m -1 &
picom &
dunst &
deadd-notificaiton-center &
udiskie -anT2 &

exec bspwm
