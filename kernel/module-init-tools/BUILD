(

  bad_flags -malign-double
  
  sedit "s:ln -s :ln -sf :" Makefile.in  &&

  ./configure  --build=$BUILD                     \
               --mandir=/usr/share/man            \
               --prefix=/lib/module-init-tools/   \
	       ac_cv_prog_DOCBOOKTOMAN=yes       &&

  default_make  &&
  install -m0644 modprobe.devfs /etc
  
)  > $C_FIFO 2>&1
