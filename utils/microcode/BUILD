(

   bzcat $SOURCE_CACHE/$SOURCE > microcode.dat &&
   prepare_install &&
   install -m644 microcode.dat /etc/ &&
   rm microcode.dat

) > $C_FIFO 2>&1
