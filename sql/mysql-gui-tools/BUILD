(

  cd $SOURCE_DIRECTORY/common  &&
  ./configure --prefix=/usr
  make  &&

  cd $SOURCE_DIRECTORY/query-browser  &&
  ./configure --prefix=/usr
  make  &&

  cd $SOURCE_DIRECTORY/migration-tool  &&
  ./configure --prefix=/usr
  make  &&

  cd $SOURCE_DIRECTORY/administrator  &&
  ./configure --prefix=/usr
  make  &&

  prepare_install  &&

  cd $SOURCE_DIRECTORY/common  &&
  make install  &&

  cd $SOURCE_DIRECTORY/query-browser  &&
  make install  &&

  cd $SOURCE_DIRECTORY/migration-tool  &&
  make install  &&

  cd $SOURCE_DIRECTORY/administrator  &&
  make install  &&

) > $C_FIFO 2>&1
