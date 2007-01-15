( 
   export PKG_CONFIG_PATH="${XFCE4_PREFIX:-/opt/lunar/xfce4}/lib/pkgconfig:${PKG_CONFIG_PATH}" &&
   export PATH="${XFCE4_PREFIX:-/opt/lunar/xfce4}/bin:$PATH" && 

   ./configure --build=$BUILD					\
                --prefix=${XFCE4_PREFIX:-/opt/lunar/xfce4}	\
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
