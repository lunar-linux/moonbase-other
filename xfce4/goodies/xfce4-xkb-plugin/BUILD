(

  if [ -f /etc/profile.d/xfce4.rc ] ; then
    . /etc/profile.d/xfce4.rc
  fi  &&

  # Make sure proper PKG_CONFIG_PATH is set
  export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}"  &&

  ./configure  --build=$BUILD             \
               --prefix=${MODULE_PREFIX}  \
               $OPTS                     &&

  default_make

) > $C_FIFO 2>&1
