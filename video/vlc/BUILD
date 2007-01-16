(

  ./configure  --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --enable-libmpeg2     \
               --disable-smb         \
               --disable-gtk         \
               --disable-qt          \
               --disable-kde         \
               --enable-x11          \
               --enable-skins        \
               $OPTS                &&

  default_make

) > $C_FIFO 2>&1
