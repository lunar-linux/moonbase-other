(
 
  sedit "s/LDIR= \/usr\/local\//LDIR= \/usr\//"      \
          build/gmake/Makefile                                        &&
  sedit "s/\/usr\/local\/man\//\/usr\/share\/man\//" \
          build/gmake/Makefile                                        &&
  /bin/sh ./build/gnuauto/setup.sh                                    &&
  default_build                                                       &&
    
  DOCDIR="/usr/share/doc/tidy"                                        &&
  if [ ! -d $DOCDIR ]; then
    mkdir -p $DOCDIR
  fi                                                                  &&
    
  cp -r $SOURCE_DIRECTORY/htmldoc  $DOCDIR
    
) > $C_FIFO 2>&1
