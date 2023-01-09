#!/usr/bin/env sh

# uncomment the line below in the i3 config file 
#exec --no-startup-id ~/.config/i3/polybar/launch.sh

killall -q polybar
polybar ~/.config/polybar/config &
#polybar --reload mainbar-i3 -c ~/.config/polybar/config &