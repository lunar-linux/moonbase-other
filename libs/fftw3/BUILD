(

  OPTS="$OPTS --enable-shared"

  if [[ "$ENABLE_FLOAT" == "y" ]]; then
    OPTS="$OPTS --enable-float"
  fi &&

  default_build

) > $C_FIFO 2>&1
