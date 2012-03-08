(
  . /etc/profile.d/x11r7.rc  &&

  OPTS+=" --disable-unit-tests"
  default_build  &&

  mkdir -p /usr/share/hal/fdi/policy/10osvendor  &&
  cp conf/11-x11-synaptics.fdi /usr/share/hal/fdi/policy/10osvendor/

) > $C_FIFO 2>&1
