(

  cd $SOURCE_DIRECTORY      &&
  tar zxf source.tar.gz     &&
  cd source                 &&
  ./configure --prefix=/usr &&
  make                      &&
  prepare_install           &&
  make install
  
) > $C_FIFO 2>&1
