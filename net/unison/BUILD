(

  unset CFLAGS CXXFLAGS &&
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  if module_installed lablgtk ; then
    make UISTYLE=gtk
  else
    make UISTYLE=text
  fi &&
  prepare_install &&
  strip unison &&
  cp unison /usr/bin/

) > $C_FIFO 2>&1
