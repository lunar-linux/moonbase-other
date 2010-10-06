(

  . /etc/profile.d/qt4.rc &&

  cd rbutil/rbutilqt/ &&
  sedit "s:/usr/local:/usr:g" rbutilqt.pro &&

  qmake &&

  default_make

) > $C_FIFO 2>&1
