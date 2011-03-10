(

  # Substitute missing icon
  sedit "s:Icon=applications-education:Icon=applications-science:1" data/xfce/xfce-education.directory.in  &&

  # http://bugzilla.xfce.org/show_bug.cgi?id=6920
  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1
