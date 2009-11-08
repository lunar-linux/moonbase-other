(

  . /etc/profile.d/qt4.rc   &&

  ./configure --prefix=/usr  \
              $OPTS         &&

  qmake myththemes.pro      &&

  default_make

) > $C_FIFO 2>&1
