(

  [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

  # Make sure proper PKG_CONFIG_PATH is set
  export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&

  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1
