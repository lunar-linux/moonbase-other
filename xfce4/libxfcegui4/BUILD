
( 
   # make sure proper PKG_CONFIG_PATH is set
   export PKG_CONFIG_PATH="${XFCE4_PREFIX:-/opt/lunar/xfce/4.0}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&
   
   ./configure  --build=$BUILD					\
                --prefix=${XFCE4_PREFIX:-/opt/lunar/xfce/4.0}	\
		--enable-xinerama				\
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
