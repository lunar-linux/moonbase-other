(

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 0 &&
  patch_it $SOURCE4 1 &&
  patch_it $SOURCE5 1 &&

  if [ -f $CONFIG_CACHE/net-tools.config.h ]; then
    cp $CONFIG_CACHE/net-tools.config.h config.h
  else
    if [ "$(get_module_config AUTOCONF)" == "y" ]; then
      NET_TOOLS_AUTOCONF=1 ./configure.sh config.in
    else
      ./configure.sh config.in
    fi &&
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
