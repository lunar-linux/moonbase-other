(

  cd $SOURCE_DIRECTORY/mysql-gui-common &&
  ./configure --prefix=/usr \
	      --with-commondirname=common/admin \
	      $OPTS &&
  make &&

  cd $SOURCE_DIRECTORY/mysql-administrator &&
  ./configure --prefix=/usr \
              --with-commondirname=common/admin \
              $OPTS &&
  make &&
  prepare_install &&
  cd $SOURCE_DIRECTORY/mysql-gui-common &&
  make install &&
  cd $SOURCE_DIRECTORY/mysql-administrator &&
  make install

) > $C_FIFO 2>&1
