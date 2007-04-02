(
   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc
 
   export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&
   export PATH="${MODULE_PREFIX}/bin:$PATH" && 

   ./configure --build=$BUILD					\
                --prefix=${MODULE_PREFIX}	\
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
