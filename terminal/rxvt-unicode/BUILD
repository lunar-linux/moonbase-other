(
  if [ "$USE_XTERM_COL" == "y" ]; then
    patch_it doc/urxvt-8.2-256color.patch 1 &&
    ./autogen.sh
  fi &&

  default_build &&
  chmod 644 README* Changes INSTALL

) > $C_FIFO 2>&1

