(

  sedit "s:local/lib:share/games/crossfire:" sound-src/sounds.dist &&

  default_game_build  &&
    
  mkdir -p /usr/share/games/crossfire-client  &&
  cd /usr/share/games/crossfire-client  &&
  unpack  $SOURCE1  &&
  unpack  $SOURCE2  &&
  chown -R root:root /usr/share/games/crossfire-client/sounds

) > $C_FIFO 2>&1
