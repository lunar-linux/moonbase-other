(

  cat $SOURCE_CACHE/$SOURCE2 | patch -p1            &&
  CFLAGS="$CFLAGS -Wno-deprecated"                  &&
  KV=`uname -r`                                     &&
  make -f Makefile.linux                            &&
  prepare_install                                   &&
  cp *.o  /lib/modules/$KV                          &&
  depmod -a

) > $C_FIFO 2>&1
