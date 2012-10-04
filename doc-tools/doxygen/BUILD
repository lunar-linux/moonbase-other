(

  if module_installed qt4; then
    . /etc/profile.d/qt4.rc  &&
      OPTS+=" --with-doxywizard"
  fi  &&

  OPTS+=" --prefix /usr"  &&

  ./configure $OPTS  &&
  default_make

) > $C_FIFO 2>&1
