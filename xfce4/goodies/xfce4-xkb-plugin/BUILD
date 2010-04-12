(
   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  patch_it $SOURCE_CACHE/$SOURCE3 1  &&

   # make sure proper PKG_CONFIG_PATH is set
   export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}"  &&

   ./configure  --build=$BUILD             \
                --prefix=${MODULE_PREFIX}  \
                $OPTS                     &&

   default_make

) > $C_FIFO 2>&1
