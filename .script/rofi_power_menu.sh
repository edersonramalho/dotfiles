#!/usr/bin/env bash

# Set environment
#export BSPWM_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}/bspwm"

# File to save status
export BSPWM_STATE="${XDG_DATA_HOME:-$HOME/.local/share}/bspwm-state.json"

# Function to kill programs
killprogs() {
  # Kill udisks-glue
  pkill -x udisks-glue
  # Kill panel
  pkill -x panel
  # Kill Redshift
  pkill -x redshift
}

# Restart function
# shellcheck source=/dev/null
restart() {
  # Save session status
  . "$BSPWM_CONFIG/restore.cfg"
  bspc wm --dump-state > "$BSPWM_STATE"
  # Kill programs
  killprogs
  # Quit bspwm
  bspc quit 0
}

# Logout function
logout() {
  # For each opened window
  bspc query --nodes | while read -r winid; do
    # Close it
    xdotool windowkill "$winid"
  done
  # Kill programs
  killprogs
  # Quit bspwm
  bspc quit 1
}

#OPTIONS="Reboot system\nPower-off system\nSuspend system\nHibernate system\nLock system\nExit window manager"
OPTIONS="Reiniciar\nDesligar\nSuspender\nHibernar\nLock\nLogout"

LAUNCHER="rofi -theme squared-nord -dmenu -i -p rofi-power:"
USE_LOCKER="true"
LOCKER="$HOME/scripts/lockscript/lock -n"

option=`echo -e $OPTIONS | $LAUNCHER | awk '{print $1}' | tr -d '\r\n'`
if [ ${#option} -gt 0 ]
then
    case $option in
      Logout)
        i3-msg exit
        ;;
      Reiniciar)
        systemctl --no-wall reboot
        ;;
      Desligar)
        systemctl --no-wall poweroff
        ;;
      Suspender)
        $($USE_LOCKER) && "$LOCKER"; systemctl suspend
        ;;
      Hibernar)
        $($USE_LOCKER) && "$LOCKER"; systemctl hibernate
        ;;
      Lock)
	$LOCKER
	;;
      *)
        ;;
    esac
fi

'''
if [ ${#option} -gt 0 ]
then
    case $option in
      Exit)
        i3-msg exit
        ;;
      Reboot)
        systemctl reboot
        ;;
      Power-off)
        systemctl poweroff
        ;;
      Suspend)
        $($USE_LOCKER) && "$LOCKER"; systemctl suspend
        ;;
      Hibernate)
        $($USE_LOCKER) && "$LOCKER"; systemctl hibernate
        ;;
      Lock)
  $LOCKER
  ;;
      *)
        ;;
    esac
fi
'''