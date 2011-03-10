(

  # Use substitute for missing icon
  sedit "s:Icon=internet-mail:Icon=mail-message-new:1" exo-open/exo-mail-reader.desktop.in  &&

  OPTS+=" --disable-static"  &&

  default_build

) > $C_FIFO 2>&1
