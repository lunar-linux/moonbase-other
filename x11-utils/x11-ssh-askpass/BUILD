( 

   ./configure --libexecdir=/usr/libexec  &&
   xmkmf  &&
   sedit "s:/usr/local/man:/usr/share/man:" Makefile &&
   make includes  &&
   default_make
   
) > $C_FIFO 2>&1
