(

  bad_flags -malign-double
  
  sedit "s:ln -s :ln -sf :" Makefile.in  &&
  sedit "s/DOCBOOKTOMAN :=/# DOCBOOKTOMAN := /" Makefile.in  &&

  ./configure  --build=$BUILD                       \
               --mandir=/lib/module-init-tools/man  \
               --prefix=/lib/module-init-tools/    &&

  default_make  &&
  install -m0644 modprobe.devfs /etc
  
)  > $C_FIFO 2>&1
