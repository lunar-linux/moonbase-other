(

  LIBOPTS=$LIBOPTS"--enable-release --enable-nessuspcap --enable-cipher"
  LIBNASLOPTS=""
  COREOPTS=$COREOPTS" --enable-release --enable-syslog"
  PLUGOPTS=$PLUGOPTS" --with-fetchcmd=wget"

  prepare_install &&

  (
    cd $MODULE-libraries-$VERSION  &&
    OPTS=$LIBOPTS   &&
    default_config  &&
    make            &&
    make install
  )  &&

  (
    cd libnasl-$VERSION  &&
    OPTS=$LIBNASLOPTS    &&
    default_config       &&
    make                 &&
    make install
  )  &&

  (
    cd $MODULE-core-$VERSION  &&
    sedit  "s:default\:::" nessus/comm.c  &&
    OPTS=$COREOPTS  &&
    default_config  &&
    make            &&
    make install
  )  &&

  (
    cd $MODULE-plugins-GPL-$VERSION  &&
    OPTS=$PLUGOPTS  &&
    default_config  &&
    make            &&
    make install
  )
  
) > $C_FIFO 2>&1
