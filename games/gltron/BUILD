(

  sedit  "s/-lglut /-lglut -lGLU -lXi -lXmu /"  configure
  sedit  "s/-lSDL /-lSDL -lpthread /"           configure

  ./configure  --prefix=/usr                     \
               --bindir=/usr/share/games/gltron  &&
  sedit  "s/-O2/$CFLAGS/"  Makefile              &&
  make                                           &&
  prepare_install                                &&
  #  make  install                               &&
  mkdir  -p       /usr/share/games/gltron        &&
  cp  -r  art     /usr/share/games/gltron        &&
  cp  -r  data    /usr/share/games/gltron        &&
  cp  -r  sounds  /usr/share/games/gltron        &&
  cp  gltron      /usr/share/games/gltron        &&
  ln    -sf  ../share/games/gltron/gltron        \
                 /usr/games/gltron

) > $C_FIFO 2>&1
