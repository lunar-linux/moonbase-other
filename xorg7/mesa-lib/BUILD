(
  OPTS+="--with-dri-drivers="
  OPTS+=$(echo $MESADRIVER | sed s/\ /,/g)
  ./configure --prefix=/usr $OPTS && 

  prepare_install &&

  make && 

  make install                                                
  install -v -m644 include/GLView.h /usr/include/        &&
  install -v -m755 progs/xdemos/glxinfo progs/xdemos/glxgears /usr/bin

) > $C_FIFO 2>&1
