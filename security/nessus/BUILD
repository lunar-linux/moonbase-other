(

  if  grep  -q  "enable-gtk"  $MODULE_CONFIG;  then
    if  !  module_installed gtk+; then
      lin gtk+
    fi
  fi

  LIBOPTS=$LIBOPTS"--enable-release --enable-nessuspcap --enable-cipher"
  LIBNASLOPTS=""
  COREOPTS=$COREOPTS" --enable-release --enable-syslog"
  PLUGOPTS=$PLUGOPTS" --with-fetchcmd=wget"

  prepare_install &&

  (
    cd $MODULE-libraries &&
    OPTS=$LIBOPTS        &&
    default_config       &&
    make                 &&
    make install
  ) &&

  (
    cd libnasl           &&
    OPTS=$LIBNASLOPTS    &&
    default_config       &&
    make                 &&
    make install
  ) &&

  (
    cd $MODULE-core      &&
    OPTS=$COREOPTS       &&
    default_config       &&
    make                 &&
    make install
  ) &&

  (
    cd $MODULE-plugins   &&
    OPTS=$PLUGOPTS       &&
    default_config       &&
    make                 &&
    make install
  )
  
) > $C_FIFO 2>&1
