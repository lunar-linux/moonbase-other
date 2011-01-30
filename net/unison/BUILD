(

  unset CFLAGS CXXFLAGS &&

  make clean            &&
  make mkProjectInfo    &&

  if module_installed lablgtk ; then
    make UISTYLE=gtk2
  else
    make UISTYLE=text
  fi &&

  prepare_install &&
  strip unison &&
  cp unison /usr/bin/

) > $C_FIFO 2>&1
