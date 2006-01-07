(

  sedit 's:BASE_DIR .:BASE_DIR  :'                 src/Directories.h  &&
  sedit 's:"images":"usr/share/games/abe/images":' src/Directories.h  &&
  sedit 's:"sounds":"usr/share/games/abe/sounds":' src/Directories.h  &&
  sedit 's:"maps":"usr/share/games/abe/maps":'     src/Directories.h  &&
  sedit 's:#define IMAGES://#define IMAGES:'       src/Image.h        &&
  default_game_build  &&
  mkdir -p /usr/share/games/abe  &&
  cp -avr images maps sounds /usr/share/games/abe/

) > $C_FIFO 2>&1
