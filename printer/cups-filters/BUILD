 
  if ! module_installed cups ; then
    lin cups
  fi &&

  ./autogen.sh &&

  if module_installed systemd ; then
    OPTS+=" --without-rcstop --without-rcstart --without-rclevels --without-rcdir"
  fi &&

  default_build
