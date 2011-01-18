(

  sedit "s:/usr/local:/usr:1" Makefile &&

  # Useless files
  rm -rf doc/images/.thumbnails &&

  default_build &&
  make menu &&

  # Docs - README is really INSTALL. Are installed by Makefile, don't pickup.
  rm -rf doc

) > $C_FIFO 2>&1
