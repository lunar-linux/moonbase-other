(

# This sedit fixes this build failure;
# Error: The implementation /usr/src/unison-2.32.52/update.ml
#       does not match the interface update.cmi:
#       Modules do not match:
  sedit "s:Map.S with type key:MyMap.S with type key:" update.mli &&

  unset CFLAGS CXXFLAGS &&
  if module_installed lablgtk ; then
    make UISTYLE=gtk2
  else
    make UISTYLE=text
  fi &&
  prepare_install &&
  strip unison &&
  cp unison /usr/bin/

) > $C_FIFO 2>&1
