(
  patch_it $SOURCE2 1 &&
	
  cd $SOURCE_DIRECTORY/mysql-gui-common &&
  ./configure --prefix=/usr \
	      --with-commondirname=common/query-browser \
	      $OPTS &&
  make &&

  cd $SOURCE_DIRECTORY/mysql-query-browser &&
  ./configure --prefix=/usr \
              --with-commondirname=common/query-browser \
	      --with-gtkhtml=libgtkhtml-3.8 \
              $OPTS &&
  make &&
  prepare_install &&
  cd $SOURCE_DIRECTORY/mysql-gui-common &&
  make install &&
  cd $SOURCE_DIRECTORY/mysql-query-browser &&
  make install

) > $C_FIFO 2>&1
