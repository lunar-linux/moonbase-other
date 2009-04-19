(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  ./configure      &&
  ./scons          &&
  ./scons install  &&

  default_make

) > $C_FIFO 2>&1
