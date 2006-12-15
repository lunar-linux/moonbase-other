(

  if ! module_installed libSM; then
    OPTS="$OPTS --disable-sm";
  fi &&

  OPTS="$OPTS  --disable-consoleui"

  default_cvs_build

) > $C_FIFO 2>&1
