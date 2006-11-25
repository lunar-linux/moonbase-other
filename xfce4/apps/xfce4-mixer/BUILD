(
   # make sure proper PKG_CONFIG_PATH is set
   export PKG_CONFIG_PATH="${XFCE4_PREFIX:-/opt/lunar/xfce4}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&

   ./configure  --build=$BUILD					\
                --prefix=${XFCE4_PREFIX:-/opt/lunar/xfce4}	\
		--disable-static				\
                $OPTS                                           &&

   # bug in 4.1.90
   cp settings/stringlist.inc lib/				&&

   default_make

) > $C_FIFO 2>&1
