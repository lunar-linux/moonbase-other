(

  # From README, to compile with Lunar's libXaw, rather than "Xaw3d"
  sedit "s:#define XAW3D::" Imakefile  &&

  xmkmf &&
  prepare_install &&
  make install install.man

) > $C_FIFO 2>&1
