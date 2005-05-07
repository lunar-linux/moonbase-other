(

   patch_it  $SOURCE_CACHE/$SOURCE1 1
   
   ./configure $OPTS &&
   make &&
   prepare_install &&
   mandir=/usr/share/man make install

) > $C_FIFO 2>&1
