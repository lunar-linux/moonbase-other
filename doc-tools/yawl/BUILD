(

  patch_it  $SOURCE_CACHE/$SOURCE2 1     &&
  patch_it  $SOURCE_CACHE/$SOURCE3 1     &&

  sedit "s/SeDcFlAgS/$CFLAGS/g" Makefile &&
  
  make  		                 &&
  prepare_install  	                 &&
  make install

) > $C_FIFO 2>&1
