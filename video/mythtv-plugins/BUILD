(

  . /etc/profile.d/qt4.rc   &&

  ./configure --prefix=/usr \
              $OPTS         &&

  qmake mythplugins.pro     &&

  default_make

) > $C_FIFO 2>&1
