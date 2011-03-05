(

  patch_it $SOURCE2 0 &&

  bad_flags -fomit-frame-pointer &&
  default_build &&
  gather_docs TODO doc/rtorrent.rc

) > $C_FIFO 2>&1
