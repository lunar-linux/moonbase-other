(

  OPTS="$OPTS --disable-profile --disable-debug"

  default_build  &&

  # drop the firefox plugin (handler for lastfm:// URIs) on the
  # filesystem for now.  Maybe later I'll get more fancy
  gather_docs xpi/bmp.xpi

) > $C_FIFO 2>&1
