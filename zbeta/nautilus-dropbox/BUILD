(

  # Run the daemon, don't try to install it locally
  sedit "s:dropbox start -i:dropboxd:1" data/dropbox.desktop &&

  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1
