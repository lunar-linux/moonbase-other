(

  patch  -p 1  <  $SCRIPT_DIRECTORY/tcp_wrappers.patch &&
  patch_it ${SOURCE_CACHE}/$SOURCE2 1                  &&
  
  make  REAL_DAEMON_DIR=/usr/sbin linux  &&
  prepare_install                        &&
  for  EXECUTABLE in *; do
    if  [  -x  $EXECUTABLE ];  then
      cp       $EXECUTABLE  /usr/sbin
    fi
  done                                   &&
  cp  tcpd.h     /usr/include            &&
  cp  libwrap.a  /usr/lib

) > $C_FIFO 2>&1
