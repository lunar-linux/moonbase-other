(

 # patch_it $SOURCE_CACHE/$SOURCE2 1      &&
  cp /var/spool/lunar/$SOURCE3 ./src &&
   
  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-gtk2             \
               --disable-gnome           \
               --disable-artsc           \
	       $OPTS                     &&
  default_make

) > $C_FIFO 2>&1
