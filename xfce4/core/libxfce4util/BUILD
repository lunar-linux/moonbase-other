(

  if [ -f /etc/profile.d/xfce4.rc ] ; then
    . /etc/profile.d/xfce4.rc
  fi &&

  # http://bugzilla.xfce.org/show_bug.cgi?id=6920
  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1
