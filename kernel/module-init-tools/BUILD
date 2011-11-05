(

  bad_flags -malign-double

#  if !( module_installed docbook-utils ); then
#      patch_it $SOURCE_CACHE/$SOURCE2 1
#  fi  &&

  # It looks docbook patch presented above does nothing
  # Lets fix this temporary and find better solution later
  sedit 's/docbook2man/docbook2man-fix-it-later/' configure &&

  sedit "s:ln -s :ln -sf :" Makefile.in  &&

  ./configure  --prefix=/      \
               --build=$BUILD  \
               --mandir=/usr/share/man

  mkdir -p /etc/modprobe.d  &&

  default_make  &&

  install -m0700 $SCRIPT_DIRECTORY/init.d/modutils /etc/init.d  &&
  ln -sf ../init.d/modutils /etc/rcS.d/S20modutils

)  > $C_FIFO 2>&1
