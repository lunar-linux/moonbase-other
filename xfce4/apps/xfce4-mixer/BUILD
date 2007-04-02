(
   [ -f /etc/profile.d/xfce4.rc ] && . /etc/profile.d/xfce4.rc

   # make sure proper PKG_CONFIG_PATH is set
   export PKG_CONFIG_PATH="${MODULE_PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&

   ./configure  --build=$BUILD					\
                --prefix=${MODULE_PREFIX}	\
		--disable-static				\
                $OPTS                                           &&

   # bug in 4.1.90
   cp settings/stringlist.inc lib/				&&

   default_make

) > $C_FIFO 2>&1
