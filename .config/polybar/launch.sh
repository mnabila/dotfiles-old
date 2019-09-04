# vim: set ft=sh
#!/usr/bin/env bash

function set_env_vars() {
  # export HOSTNAME
  export ETH_INTERFACE
  export WLAN_INTERFACE
  export DEFAULT_INTERFACE

  ETH_INTERFACE=$(ip link show | grep enp | sed 's/.*: \(.*\):.*/\1/')
  WLAN_INTERFACE=$(ip link show | grep wlp | sed 's/.*: \(.*\):.*/\1/')
  DEFAULT_INTERFACE=$(ip route | grep '^default' | awk '{print $5}')
}

function stop() {
  if pgrep polybar; then
    killall -q polybar
  fi
}

function start() {
  set_env_vars
  if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
      MONITOR=$m polybar --reload -c $HOME/.config/polybar/config.ini bottom &
      MONITOR=$m polybar --reload -c $HOME/.config/polybar/config.ini systray &
    done
  else
    polybar --reload main &
  fi
}

function toggle() {
  if pgrep polybar; then
    stop
  else
    start
  fi
}

case $1 in
  start|restart ) stop ; start ;;
  stop )          stop ;;
  toggle )        toggle ;;
  * )             echo "Say 'start', 'stop' or 'toggle' my sweetheart!"
    exit 2
esac