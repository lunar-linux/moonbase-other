(

  bad_flags -malign-double
  
  sedit "s:ln -s :ln -sf :" Makefile.in   &&

  ./configure  --build=$BUILD           				\
               --mandir=/lib/module-init-tools/man  	\
               --prefix=/lib/module-init-tools/        	&&

  make                                  &&

  prepare_install                       &&

  install -m0644 modprobe.devfs /etc    &&

  make install                          

)  > $C_FIFO 2>&1
