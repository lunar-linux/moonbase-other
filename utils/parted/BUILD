(

  # fix for inlines not supported by gcc-4.2.x
  export CFLAGS="$CFLAGS -fgnu89-inline"

  sedit '/'-Wl,--as-needed'/d' m4/lib-ignore.m4 configure &&

  OPTS+=" --disable-rpath --disable-debug --disable-Werror"

  default_build &&

  gather_docs ABOUT-NLS BUGS THANKS doc/API doc/FAQ doc/FAT doc/USER.jp

) > $C_FIFO
