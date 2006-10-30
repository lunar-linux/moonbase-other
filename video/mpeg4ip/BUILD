(

  /bin/sh bootstrap &&

  if [ "$PLAYER" == "y" ] ; then
    OPTS+=" --enable-player"
  else
    OPTS+=" --disable-player"
  fi

  if [ "$SERVER" == "y" ] ; then
    OPTS+=" --enable-server"
  else
    OPTS+=" --disable-server"
  fi

  default_build

) > $C_FIFO 2>&1
