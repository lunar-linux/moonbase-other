(
  if module_installed xfree86; then
    OPTS="$OPTS --enable-x"
  else
    OPTS="$OPTS --disable-x"
  fi &&
  default_build

) > $C_FIFO 2>&1
