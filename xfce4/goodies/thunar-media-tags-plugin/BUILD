(
   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

   # make sure proper PKG_CONFIG_PATH is set
   export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&

   sedit 's/exo-0.3/exo-1/'        configure &&
   sedit 's/thunarx-1/thunarx-2/'  configure &&

   ./configure  --build=$BUILD                                        \
                --prefix=${MODULE_PREFIX}        \
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
