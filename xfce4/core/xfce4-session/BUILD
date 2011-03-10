(

  if [ -f /etc/profile.d/xfce4.rc ] ; then
    . /etc/profile.d/xfce4.rc
  fi &&

  # Make sure proper PKG_CONFIG_PATH is set
  export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&

  PATH="$PATH:/usr/X11/bin" &&

  # http://bugzilla.xfce.org/show_bug.cgi?id=6920
  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1
