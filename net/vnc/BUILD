(

  cd unix          &&
  ./configure      &&
  make             &&
  prepare_install  &&
  ./vncinstall /usr/bin  &&
  mkdir -p /usr/share/vnc/classes  &&
  cp ../common/javabin/*  /usr/share/vnc/classes

) > $C_FIFO 2>&1
