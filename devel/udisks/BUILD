(

  OPTS+="  --disable-man-pages"  &&

  if module_installed systemd ; then
      sedit "s:slashlibdir=$prefix/lib:slashlibdir=/usr/lib/:g" configure.ac &&
      libtoolize &&
      autoreconf
  fi &&
  
  default_build

) > $C_FIFO 2>&1
