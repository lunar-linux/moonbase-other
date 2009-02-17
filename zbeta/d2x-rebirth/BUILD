(

  sedit "/^BIN_DIR =/s/.*/BIN_DIR = '\/usr\/games'/" SConstruct &&
  # Replaces dos2unix, to fix line-endings
  sedit 's/\r//' *.txt &&

  opts="prefix=/usr sdlmixer=1" &&
  scons $opts &&
  
  prepare_install &&
  scons $opts install &&
  # Create directory for manually-installed data files
  mkdir -p /usr/share/games/d2x-rebirth/missions
  
) > $C_FIFO 2>&1 

