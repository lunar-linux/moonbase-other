(

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 0 &&
  patch_it $SOURCE4 1 &&
  patch_it $SOURCE5 1 &&
  sedit "s/-O2/$CFLAGS/" Makefile &&
  sedit "s/LOPTS = /LOPTS = $LDFLAGS -s/" Makefile &&

  # Do not add debug data to protect against hacking
  # and stop chkrootkit from reporting false positive
  sedit "s/-g//" Makefile &&

  if [ -f $CONFIG_CACHE/net-tools.config.h ]; then
    cp $CONFIG_CACHE/net-tools.config.h config.h
  else
    if [ "$(get_module_config AUTOCONF)" == "y" ]; then
      NET_TOOLS_AUTOCONF=1 ./configure.sh config.in
    else
      ./configure.sh config.in
    fi &&
    cp config.h $CONFIG_CACHE/net-tools.config.h
  fi &&

  make            &&
  prepare_install &&

  make BASEDIR=/ install &&
  install -m 755 $SCRIPT_DIRECTORY/ifup   /sbin &&
  install -m 755 $SCRIPT_DIRECTORY/ifdown /sbin

) > $C_FIFO 2>&1
