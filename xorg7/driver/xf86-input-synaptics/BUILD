(
  . /etc/profile.d/x11r7.rc  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  OPTS+=" --disable-unit-tests"
  default_build  &&

  mkdir -p /usr/share/hal/fdi/policy/10osvendor  &&
  cp conf/11-x11-synaptics.fdi /usr/share/hal/fdi/policy/10osvendor/  &&

  mkdir -p /etc/X11/xorg.conf.d  &&
  install -m644 $SCRIPT_DIRECTORY/10-synaptics.conf /etc/X11/xorg.conf.d/

) > $C_FIFO 2>&1
