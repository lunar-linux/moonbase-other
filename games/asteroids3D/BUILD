(

  sedit "s:-lGLU::" Makefile  && 

  sedit "s:contrib/nebula:nebula:" texture.c  &&
  sedit "s:\(torp_tex0.ppm\):/usr\/share\/games\/asteroids3D/\1:" texture.c     &&
  sedit "s:\(ast_tex[0-9].ppm\):/usr/share/games/asteroids3D/\1:" texture.c     &&
  sedit "s:\(nebula_tex[0-9].ppm\):/usr/share/games/asteroids3D/\1:" texture.c  &&

  sedit "s:\(ta_snd.ub\):/usr/share/games/asteroids3D/\1:" sound.c        &&
  sedit "s:\(tf_snd.ub\):/usr/share/games/asteroids3D/\1:" sound.c        &&
  sedit "s:\(coll_snd.ub\):/usr/share/games/asteroids3D/\1:" sound.c      &&
  sedit "s:\(ast_snd[0-9].ub\):/usr/share/games/asteroids3D/\1:" sound.c  &&

  make                       &&
  prepare_install            &&
  cp asteroids3D /usr/games  &&
  if [ ! -d /usr/share/games/asteroids3D ]; then
    mkdir /usr/share/games/asteroids3D
  fi                                     &&
  cp *.ppm /usr/share/games/asteroids3D  &&
  cp *.ub  /usr/share/games/asteroids3D  &&
  cp contrib/*.ppm /usr/share/games/asteroids3D

) > $C_FIFO 2>&1
