(  
   if [ "x`arch`" == "xppc" ]; then
     cd $SOURCE_DIRECTORY &&
     sedit "s,PREFIX = usr/local,PREFIX = usr," Makefile &&
     make                 &&
     prepare_install      &&
     make install
   fi
) > $C_FIFO
