(

  . /etc/profile.d/qt4.rc   &&

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  ./configure --prefix=/usr \
              $OPTS         &&

  qmake mythtv.pro          &&

  default_make              &&

  install database/mc.sql /usr/share/mythtv/

) > $C_FIFO 2>&1
