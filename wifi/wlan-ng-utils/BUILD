(

  DIRS="doc man etc src/shared src/wlanctl src/wland src/nwepgen src/mkmeta src/wlancfg"
  sedit "s:RC_DIR=/etc/rc.d:RC_DIR=/etc/init.d:" config.in Configure
  sedit "s:/usr/local/man/man1:/usr/share/man/man1:" man/Makefile
  make auto_config 	&&
  for DIR in $DIRS ; do
    make -C $DIR || return -1
  done                  &&
  prepare_install 	&&
  for DIR in $DIRS ; do
    make -C $DIR install || return -1
  done

) > $C_FIFO 2>&1
