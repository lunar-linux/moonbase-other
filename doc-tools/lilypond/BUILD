(

  # For some reason it has a problem finding the .pfb
  # files provided by urw-fonts.
  OPTS+=" --with-ncsb-dir=/usr/share/fonts/urw-fonts" &&

  mkdir build &&
  cd build/ &&

  ../configure --prefix=/usr &&

  make all &&
  if in_depends $MODULE texi2html; then
     make doc
  fi &&

  prepare_install &&

  make install &&
  if in_depends $MODULE texi2html; then
     make install-doc
  fi

) > $C_FIFO 2>&1
