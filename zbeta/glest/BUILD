(
  sedit 's:"glest.log":"/tmp/glest.log":' glest_game/main/program.cpp &&

  #we don't want the map editor to build - it would fail
  sedit 's:if $(WX_AVAILABLE) = "yes" {:if 1 = 0 {:' Jamfile  &&

  default_game_config &&

  jam                    &&
  
  prepare_install            &&
  
  install -d /usr/share/games/glest &&
  cp -rf glest glest.ini data/glest_game/* /usr/share/games/glest/ &&

  echo \#\!/bin/sh >/tmp/glest.tmp &&
  echo cd /usr/share/games/glest\; ./glest \$*\; exit \$? >/tmp/glest.tmp &&
  mv /tmp/glest.tmp /usr/games/glest &&
  chmod 0755 /usr/games/glest 

) > $C_FIFO 2>&1
