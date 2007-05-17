(

  if module_installed swig ; then
  patch_it $SOURCE2 1
  fi &&

  default_build &&

  gather_docs doc/LCMSAPI.TXT doc/TUTORIAL.TXT

) > $C_FIFO 2>&1
