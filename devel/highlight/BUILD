(

  sedit "s:/usr/local/bin/:/usr/bin/:g" makefile  &&
  sedit "s:\${PREFIX}/etc/highlight/:/etc/highlight/:" makefile  &&

  make help    &&
  default_make &&

  if module_installed wxGTK; then
     make all-gui && make install-gui
  fi &&

  if module_installed doxygen; then
     make apidocs
  fi

) > $C_FIFO 2>&1
