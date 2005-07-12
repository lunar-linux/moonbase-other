(

   patch_it  $SOURCE2 1
   patch_it  $SOURCE3 0
   
   ./configure $OPTS &&
   make &&
   prepare_install &&
   mandir=/usr/share/man make install

) > $C_FIFO 2>&1
