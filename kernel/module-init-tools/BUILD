(

  bad_flags -malign-double

  if ![ module_installed docbook-utils ]; then
      patch_it $SOURCE_CACHE/$SOURCE2 1
  fi  &&

  sedit "s:ln -s :ln -sf :" Makefile.in  &&

  ./configure  --build=$BUILD                     \
               --mandir=/usr/share/man            \
               --prefix=/lib/module-init-tools/   \
               ac_cv_prog_DOCBOOKTOMAN=yes       &&

  mkdir -p /etc/modprobe.d  &&

  default_make

)  > $C_FIFO 2>&1
