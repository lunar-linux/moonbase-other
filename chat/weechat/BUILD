(
  default_build                           &&
  cd /usr/bin                             &&
  if [ -h /usr/bin/weechat ]; then
    rm -f weechat
  fi                                      &&
  ln -sf weechat-curses weechat

) > $C_FIFO 2>&1
