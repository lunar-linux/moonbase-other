(
  tar xjf $SOURCE_CACHE/$SOURCE1 -C $SOURCE_DIRECTORY/contrib/ --strip-components=1 && 
  make && 
  cd gtk &&
  ./autogen.sh --prefix=/usr &&
  make &&
  prepare_install && 
  make install

#  install -m755 HandBrakeCLI /usr/bin/ 
#




) > $C_FIFO 2>&1

