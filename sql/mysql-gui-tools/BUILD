(
  cd $SOURCE_DIRECTORY/mysql-gui-common &&
  ./configure --prefix=/usr
  make &&

  cd $SOURCE_DIRECTORY/mysql-administrator &&
  ./configure --prefix=/usr
  make &&

  cd $SOURCE_DIRECTORY/mysql-query-browser &&
  ./configure --prefix=/usr \
              --with-gtkhtml=libgtkhtml-3.8
  make &&

  prepare_install &&
  cd $SOURCE_DIRECTORY/mysql-gui-common &&
  make install &&
  cd $SOURCE_DIRECTORY/mysql-administrator &&
  make install &&
  cd $SOURCE_DIRECTORY/mysql-query-browser &&
  make install
) > $C_FIFO 2>&1
