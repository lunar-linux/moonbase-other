(

  sedit "s:#X11_PATH:X11_PATH:" Makefile &&
  sedit '/CONFIG_DATA/s:"\./data":"/usr/share/games/neverball":g' share/base_config.h &&

  make             &&
  prepare_install  &&

  mkdir -p /usr/share/games/neverball/       &&
  cp -fR data/* /usr/share/games/neverball/  &&

  install -m0755 neverball /usr/games/  &&
  install -m0755 neverputt /usr/games/

) > $C_FIFO 2>&1
