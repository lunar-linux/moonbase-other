
( 
   ./configure  --build=$BUILD					\
                --prefix=${XFCE4_PREFIX:-/opt/lunar/xfce/4.0}	\
		--enable-xinerama				\
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
