#!/bin/bash

# Start daemons and apps
wl-paste --watch cliphist store &
waybar &
swww-daemon &
waypaper --restore &
spotify &
ghostty --title fastfetch -e fastfetch &
ghostty --title btop -e btop &

# Give them time to spawn
sleep 2

# Set layout
hyprctl dispatch focuswindow title:fastfetch
hyprctl dispatch split:top
hyprctl dispatch focuswindow title:btop
hyprctl dispatch split:bottom
hyprctl dispatch focuswindow class:spotify
hyprctl dispatch togglefloating active
hyprctl dispatch movewindowpixel exact 1600 100
hyprctl dispatch resizeactive exact 600 800
