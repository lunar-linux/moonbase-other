(
   #combreloc linker options fscks up things here
   LDFLAGS=`echo ${LDFLAGS} | sed "s/-z combreloc//"` 

   default_config  &&
   make bootstrap  &&
   prepare_install &&
   make install

) > $C_FIFO 2>&1 
