(

  sedit 's/TIDYDIR=../TIDYDIR=\/usr\/src\/html2db\/tidy/' Makefile    &&
  cd tidy                                                             &&
  sedit "s/LDIR= \/usr\/local\//LDIR= \/usr\//"      \
          build/gmake/Makefile                                        &&
  sedit "s/\/usr\/local\/man\//\/usr\/share\/man\//" \
          build/gmake/Makefile                                        &&
  cd build/gmake                                                      &&
  make                                                                &&
    
  cd  /usr/src/$MODULE                                                &&
  make                                                                &&
  install -m755 -groot -oroot html2db /usr/bin
    
) > $C_FIFO 2>&1
