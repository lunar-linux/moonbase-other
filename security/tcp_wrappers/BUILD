(

  VER=`lvu version tcp_wrappers` &&

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 0 &&

  make  REAL_DAEMON_DIR=/usr/sbin linux  &&
  prepare_install                        &&
  for  EXECUTABLE in *; do
    if  [  -x  $EXECUTABLE ];  then
      cp       $EXECUTABLE  /usr/sbin
    fi
  done                                   &&

  cp -f tcpd.h     /usr/include/           &&
  cp -f libwrap.a  /usr/lib/               &&
  cp -f shared/libwrap.so.0.$VER /usr/lib/ &&

  ln -sf /usr/lib/libwrap.so.0.$VER /usr/lib/libwrap.so  &&
  ln -sf /usr/lib/libwrap.so.0.$VER /usr/lib/libwrap.so.0

) > $C_FIFO 2>&1
