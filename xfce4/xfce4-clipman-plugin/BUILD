
( 
   ./configure  --build=$BUILD					\
                --prefix=${XFCE4_PREFIX:-/opt/lunar/xfce/4.0}	\
                --disable-static				\
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
