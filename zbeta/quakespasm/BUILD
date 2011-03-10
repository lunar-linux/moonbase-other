(

  cd Quake &&
  patch_it ../Misc/homedir_0.patch 1 &&
  sedit "s:/usr/local:/usr:" Makefile &&
  sedit "s:/usr/games/quake:/usr/games/$MODULE:" Makefile &&

  default_build

) > $C_FIFO 2>&1
