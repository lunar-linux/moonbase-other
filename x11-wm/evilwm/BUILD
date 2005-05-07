(

  sedit "s:DEFINES += -DMWM_HINTS::" Makefile
  sedit "s/prefix)\/man/prefix)\/share\/man/g" Makefile
  sedit "s/#gzip -9/gzip -9/" Makefile
   
  make prefix=/usr &&
  prepare_install  &&
  make	prefix=/usr install		
  
) > $C_FIFO 2>&1
