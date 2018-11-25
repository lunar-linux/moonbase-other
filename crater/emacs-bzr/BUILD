(
   #combreloc linker options fscks up things here
   LDFLAGS=`echo ${LDFLAGS} | sed "s/-z combreloc//"` 

   # Fix so installwatcher doesn't trigger on _ALL_ info-files
   sedit '/\-chmod \-R.*$(DESTDIR)${infodir}/ s;$(DESTDIR)${infodir};;' Makefile.in &&
   default_cvs_config  &&
   default_config      &&
   make bootstrap      &&
   prepare_install     &&
   make install

) > $C_FIFO 2>&1 
