(

  sedit "s:#X11_PATH:X11_PATH:" Makefile &&

  make &&
  prepare_install &&
  mkdir -p /usr/games/neverball-data
  cp neverball /usr/games/neverball-data/ &&
  cp -fR data /usr/games/neverball-data/ &&
  echo -e "#!/bin/bash\ncd /usr/games/neverball-data/\nexec /usr/games/neverball-data/neverball\n" > /usr/games/neverball &&
  chmod 755 /usr/games/neverball

) > $C_FIFO 2>&1
