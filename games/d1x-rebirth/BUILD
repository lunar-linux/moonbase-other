(

  sedit "/^BIN_DIR =/s/.*/BIN_DIR = '\/usr\/games'/" SConstruct &&
  # Use same executable filename as the module name
  sedit "s:d1x-rebirth-gl:d1x-rebirth:" SConstruct &&
  # Replaces dos2unix, to fix line-endings
  sedit 's/\r//' *.txt &&

  OPTS+=" prefix=/usr sdlmixer=1 debug=0" &&
  scons $OPTS &&
  
  prepare_install &&
  scons $OPTS install &&
  # Create directory for manually-installed data files
  mkdir -p /usr/share/games/d1x-rebirth/
  
) > $C_FIFO 2>&1 

