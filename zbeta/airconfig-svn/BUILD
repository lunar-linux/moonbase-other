(
   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

   # make sure proper PKG_CONFIG_PATH is set
   export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&

   OPTS+="  --disable-gtk-doc"

   touch INSTALL  &&

   default_cvs_build

) > $C_FIFO 2>&1
