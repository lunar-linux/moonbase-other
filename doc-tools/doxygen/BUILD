(

  if module_installed qt4; then
    . /etc/profile.d/qt4.rc  &&
      OPTS+=" --with-doxywizard"
    else
      patch_it $SOURCE_CACHE/$SOURCE2 1
  fi  &&

  OPTS+=" --prefix /usr"  &&

  ./configure $OPTS  &&
  default_make 

) > $C_FIFO 2>&1
