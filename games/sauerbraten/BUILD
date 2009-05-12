(

  cd src  &&
  make    &&

  prepare_install  &&

  cp sauer_* /usr/games  &&
  cp $SCRIPT_DIRECTORY/sauerbraten /usr/games  &&
  chmod 755 /usr/games/sauerbraten             &&

  cd ..  &&
  mkdir -p /usr/share/games/sauerbraten          &&
  cp -fR data     /usr/share/games/sauerbraten/  &&
  cp -fR packages /usr/share/games/sauerbraten/  &&
  cp -fR docs     /usr/share/games/sauerbraten/
    
) > $C_FIFO 2>&1
