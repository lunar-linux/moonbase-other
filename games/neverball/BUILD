(

  sedit "s:#X11_PATH:X11_PATH:" Makefile &&
  sedit '/CONFIG_DATA/s:"\./data":"/usr/games/neverball-data":g' share/base_config.h &&

  make             &&
  prepare_install  &&

  mkdir -p /usr/games/neverball-data/       &&
  cp -fR data/* /usr/games/neverball-data/  &&

  install -m0755 neverball /usr/games/  &&
  install -m0755 neverputt /usr/games/

) > $C_FIFO 2>&1
