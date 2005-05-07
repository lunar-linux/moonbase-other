(

  sedit "s:+u =:u =:"                         pdf417_enc.c &&
  sedit "s: libpdf417enc.a: libpdf417enc.so:" Makefile     &&
  make clean   &&  
  make lib     &&
  make         &&
	prepare_install &&
  
  cp -f pdf417_enc /usr/bin/   &&
  cp -f libpdf417enc.so /usr/lib/

) > $C_FIFO 2>&1
