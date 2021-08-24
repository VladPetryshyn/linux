if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload main -c "~/.config/polybar/grayblocks/config.ini" &
  done
else
  polybar --reload main -c "~/.config/polybar/grayblocks/config.ini" &
fi
