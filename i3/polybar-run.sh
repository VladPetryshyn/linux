if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload bar -c "~/.config/polybar/float/config" &
  done
else
  polybar --reload bar -c "~/.config/polybar/float/config" &
fi
