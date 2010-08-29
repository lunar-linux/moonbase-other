(

  /bin/sh ./build/gnuauto/setup.sh    &&
  OPTS="--disable-static"             &&
  default_build                       &&
    
  DOCDIR="/usr/share/doc/tidy"        &&
  if [ ! -d $DOCDIR ]; then
    mkdir -p $DOCDIR
  fi                                  &&
    
  cp -r $SOURCE_DIRECTORY/htmldoc  $DOCDIR
    
) > $C_FIFO 2>&1
