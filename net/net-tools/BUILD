if  [  -f  $CONFIG_CACHE/net-tools.config.h  ];  then
  cp       $CONFIG_CACHE/net-tools.config.h  config.h
else
  ./configure.sh  config.in
  cp  config.h  $CONFIG_CACHE/net-tools.config.h
fi

(

  #sedit  "s:-g #:$CFLAGS $LDFLAGS #:"  Makefile
  #sedit  "s:LOPTS =:LOPTS = -lintl:" Makefile

  make                                              &&
  prepare_install                                   &&
  make  BASEDIR=/  install                          &&
  cp $SCRIPT_DIRECTORY/lnet.8 /usr/share/man/man8/.

) > $C_FIFO 2>&1  &&  (

  #cleanup the old garbage
  if [ -e /etc/init.d/hostname.sh ]; then
     rm -f /etc/init.d/hostname.sh
  fi

  if  [  -e  /etc/init.d/networking.sh  ]; then
      mv /etc/init.d/networking.sh /etc/init.d/networking.old
      chmod 0644 networking.old
  fi

  rm -f /etc/rc?.d/???networking.sh

  #add the new
  cp  $SCRIPT_DIRECTORY/init.d/hostname    /etc/init.d

  cp $SCRIPT_DIRECTORY/lnet	   /usr/sbin

  if [ -e /etc/rcS.d/S20hostname ]; then
     rm -f /etc/rcS.d/S20hostname
  fi   
  ln     -sf    ../init.d/hostname  /etc/rcS.d/S20hostname

)
