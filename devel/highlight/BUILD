(

  make help    &&

  default_make &&

  if in_depends $MODULE qt4; then
     . /etc/profile.d/qt4.rc
     make gui && make install-gui
  fi &&

  if module_installed doxygen; then
     make apidocs
  fi

) > $C_FIFO 2>&1
