(

  [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

  # make sure proper PKG_CONFIG_PATH is set
  export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&

  ./autogen.sh --build=$BUILD             \
               --prefix=${MODULE_PREFIX}  \
               $OPTS                     &&

  default_make

) > $C_FIFO 2>&1
