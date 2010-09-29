(

  bad_flags -malign-double

#  if !( module_installed docbook-utils ); then
#      patch_it $SOURCE_CACHE/$SOURCE2 1
#  fi  &&

  # It looks docbook patch presented above does nothing
  # Lets fix this temporary and find better solution later
  sedit 's/docbook2man/docbook2man-fix-it-later/' configure &&

  sedit "s:ln -s :ln -sf :" Makefile.in  &&

  ./configure  --build=$BUILD                     \
               --mandir=/usr/share/man            \
               --prefix=/lib/module-init-tools/   &&

  mkdir -p /etc/modprobe.d  &&

  default_make

)  > $C_FIFO 2>&1
