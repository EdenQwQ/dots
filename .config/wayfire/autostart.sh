#!/usr/bin/env bash
sh ~/.config/autostart-scripts/env
wlsunset -s 12:00 -S 12:00 -t 3500 &
killall swaybg
swaybg -m fill -i Pictures/wallpapers/blossom3cat.png &
killall clash
~/.local/bin/clash &
mpd &
kanshi &
killall swhks
doas killall swhkd
swhks &
pkexec swhkd -c ~/.config/wayfire/swhkdrc &
doas killall evremap
doas evremap remap ~/.config/evremap.toml &
killall waybar
waybar &
killall polkit-gnome-authentication-agent-1
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# Set and exec into the default layout generator, rivertile.
# River will send the process group of the init executable SIGTERM on exit.
riverctl default-layout float &
exec rivertile -main-ratio 0.5 -view-padding 5 -outer-padding 8 &
killall nm-applet
nm-applet --indicator &
killall kdeconnect-indicator
kdeconnect-indicator &
killall blueman-applet
blueman-applet &
killall mako
mako
killall xdg-desktop-portal-wlr
/usr/lib/xdg-desktop-portal-wlr &
doas killall evremap
doas /usr/local/bin/evremap remap /home/eden/.config/evremap.toml
