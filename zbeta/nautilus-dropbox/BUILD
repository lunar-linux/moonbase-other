(

  # /usr/bin/dropbox is installed by the dropbox module
  sedit "s:bin_SCRIPTS = dropbox:bin_SCRIPTS =:1" Makefile.in &&

  # Run the daemon, don't try to install it locally
  sedit "s:dropbox start -i:dropboxd:1" data/dropbox.desktop &&

  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1
