(

  sedit "s:#X11_PATH:X11_PATH:" Makefile &&

  make &&
  prepare_install &&
  cp neverball /usr/games/neverball &&
  cp -fR data /usr/games

) > $C_FIFO 2>&1
