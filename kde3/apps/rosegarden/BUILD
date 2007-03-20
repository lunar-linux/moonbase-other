(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  cmake . -DCMAKE_INSTALL_PREFIX=`kde-config --prefix`  &&

  default_make

) > $C_FIFO 2>&1
