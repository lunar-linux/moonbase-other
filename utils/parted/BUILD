(

  # fix for inlines not supported by gcc-4.2.x
  export CFLAGS="$CFLAGS -fgnu89-inline" &&

  sedit 's/'-Wl,--as-needed'//' m4/lib-ignore.m4 configure &&

  OPTS+=" --disable-rpath --disable-debug --disable-device-mapper --disable-static" &&

  default_build &&

  gather_docs ABOUT-NLS BUGS THANKS doc/API doc/FAQ doc/FAT doc/USER.jp

) > $C_FIFO
