# xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
# xrandr --dpi 96

wmname LG3D # Java GUI render fix for tiled window managers

feh --bg-scale ~/Pictures/Wallpaper/lights-3840x2160-purple-bokeh-blurred-4k-9660.jpeg &
polybar main &
sxhkd -m -1 &
compton &
dunst &
udiskie -anT2 &
firefox-developer-edition &
# alacritty &

exec bspwm
