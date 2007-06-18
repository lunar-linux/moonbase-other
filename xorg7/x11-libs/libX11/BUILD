(

  . /etc/profile.d/x11r7.rc &&

  # https://bugs.freedesktop.org/show_bug.cgi?id=11222
  # fix dragging in the gimp
  # should be removed with version bump
  sedit "s@Time\ start,@Window\ w,\ Time\ start,@g" src/GetMoEv.c &&
  sedit "38,38d" src/GetMoEv.c &&


  default_build

) > $C_FIFO 2>&1
