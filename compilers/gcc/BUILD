(

LANGUAGES=c++
  
  ../gcc-$VERSION/configure  --host=$BUILD   \
               --prefix=/usr                 \
               --infodir=/usr/share/info     \
               --mandir=/usr/share/man       \
	       --enable-__cxa_atexit         \
	       --enable-threads              \
	       --disable-nls                 \
	       --with-system-zlib            \
	       --enable-languages=$LANGUAGES \
               --enable-shared               &&
  make  bootstrap-lean                       &&
  prepare_install                            && 

  make install                               
  

) > $C_FIFO 2>&1
