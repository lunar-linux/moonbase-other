(

  rm -f battalion                                        &&
  make		 		                                       &&
  make clean                                             &&
  rm -f *.c                                              &&
  rm -f *.h                                              &&
  rm -f *.solaris                                        &&
  rm -f Makefile*                                        &&
  prepare_install                                        &&
  cp -r ./ /usr/games/Battalion                          &&
  touch /usr/games/battalion                             &&
  echo '#!/bin/bash' > /usr/games/battalion              &&
  echo cd /usr/games/Battalion >> /usr/games/battalion   &&
  echo /usr/games/Battalion/battalion >> /usr/games/battalion
  chmod 755 /usr/games/battalion
  
) > $C_FIFO 2>&1
