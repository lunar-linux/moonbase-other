(

  make  oldconfig  &&
  sedit "s:/etc/rc.d:/etc:" config.out &&
  make  all        &&
  prepare_install  &&
  make    install  &&
  cp -r $SOURCE_DIRECTORY/include/pcmcia /usr/include

) > $C_FIFO 2>&1
