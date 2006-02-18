(

  patch_it  $SOURCE_CACHE/$SOURCE2 1                &&
  patch_it  $SOURCE_CACHE/$SOURCE3 0                &&

  if [ -f $CONFIG_CACHE/net-tools.config.h ]; then
    cp $CONFIG_CACHE/net-tools.config.h config.h
  else
    ./configure.sh config.in
    cp config.h $CONFIG_CACHE/net-tools.config.h
  fi                                                &&

  make                                              &&
  prepare_install                                   &&
  make BASEDIR=/ install                            &&
  
  if [ ! -e /etc/init.d/hostname ]; then
    install -m0755 $SCRIPT_DIRECTORY/init.d/hostname /etc/init.d/hostname &&
	ln -sf /etc/init.d/hostname /etc/rcS.d/S20hostname
  fi

) > $C_FIFO 2>&1
