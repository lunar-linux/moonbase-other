(

  ./configure      &&
  make             &&
  cd    Xvnc       &&
  # somehow the normal CXXFLAGS will fail on the link stage:
  make  World  BOOTSTRAPCFLAGS="$CFLAGS" CXXFLAGS="" &&
  prepare_install  &&
  cd    ..         &&
  ./vncinstall   /usr/bin              &&
  mkdir  -p      /usr/bin/vnc.classes  &&
  cp  classes/*  /usr/bin/vnc.classes

) > $C_FIFO 2>&1
