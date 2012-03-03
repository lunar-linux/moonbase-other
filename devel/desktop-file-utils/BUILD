(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  if module_installed qt4 ; then
      mkdir -p /usr/share/qt4/applications
  fi  &&

  default_build

) > $C_FIFO 2>&1
