(

  patch  -p1  <  $SCRIPT_DIRECTORY/vnc.patch
  xmkmf            &&
  make  World      &&
  cd    Xvnc       &&
  make  World      &&
  prepare_install  &&
  cd    ..         &&
  ./vncinstall   /usr/bin              &&
  mkdir  -p      /usr/bin/vnc.classes  &&
  cp  classes/*  /usr/bin/vnc.classes

) > $C_FIFO 2>&1



