(

  verbose_msg "CFLAGS=$CFLAGS"                &&
  verbose_msg "OPTS=$OPTS"                    &&	
  ./autogen.sh  --build=$BUILD            \
                --prefix=/usr             \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --infodir=/usr/share/info \
                --mandir=/usr/share/man   \
                $OPTS  &&
  default_make
  
) > $C_FIFO 2>&1
