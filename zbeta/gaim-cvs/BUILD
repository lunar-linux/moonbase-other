(

  verbose_msg "CFLAGS=$CFLAGS"                &&
  verbose_msg "OPTS=$OPTS"                    &&	
  ./autogen.sh  --build=$BUILD            \
                --prefix=/usr             \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --infodir=/usr/share/info \
                --mandir=/usr/share/man   \
                --enable-gtk2             \
                --disable-artsc           \
                $OPTS                     &&
  default_make
  
) > $C_FIFO 2>&1
