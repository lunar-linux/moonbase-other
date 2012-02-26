(

  default_build  &&
  cd /usr/bin    &&
  if [ -h /usr/bin/weechat ]; then
    rm -f weechat
  fi  &&
  ln -sf weechat-curses weechat  &&
  gather_docs UPGRADE_0.3

) > $C_FIFO 2>&1
