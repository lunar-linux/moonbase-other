(
  if module_installed xserver; then
    OPTS="$OPTS --enable-x"
  else
    OPTS="$OPTS --disable-x"
  fi &&
  default_build

) > $C_FIFO 2>&1
