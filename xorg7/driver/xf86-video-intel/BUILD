(

#  patch_it $SOURCE2 1  &&

  . /etc/profile.d/x11r7.rc &&

#  OPTS+=" --with-xserver-source=`pwd -P`" &&
  CFLAGS="$CFLAGS -I`pwd -P`/src/parser" &&
  OPTS=" $OPTS --enable-sna --enable-vmap " &&
  default_build

) > $C_FIFO 2>&1
