(

  patch_it $SOURCE_CACHE/$SOURCE2 1      &&
  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-gtk2             \
               --disable-gnome           \
               --disable-artsc           \
               --disable-perl            \
	       $OPTS                     &&
  default_make

) > $C_FIFO 2>&1
