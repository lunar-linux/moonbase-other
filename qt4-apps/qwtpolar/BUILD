(

  source /etc/profile.d/qt4.rc  &&

  sedit "s:/usr/local:/usr:g" qwtpolarconfig.pri &&

  qmake -recursive  &&

  sedit "s:INCPATH       =:INCPATH=        -I/usr/include/qwt-6:" src/Makefile designer/Makefile &&

  make  &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
