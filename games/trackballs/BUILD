(

  unpack $SOURCE2                             &&
  export LDFLAGS="$LDFLAGS -L/usr/X11R6/lib"  &&
  cp -a trackballs/share/* share              &&
  default_build

) > $C_FIFO 2>&1
