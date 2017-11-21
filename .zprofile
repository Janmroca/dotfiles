#Sway configuration
export XKB_DEFAULT_LAYOUT=es;
export XKB_DEFAULT_MODEL=pc102;

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec sway
fi
