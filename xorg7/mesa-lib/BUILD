(

  OPTS+=" --with-dri-drivers=" &&
  OPTS+=$(echo $MESADRIVER | sed s/\ /,/g) &&

  # Copy some headers, to avoid compile errors.
  mkdir -p /usr/include/GL/  &&
  install -m644 -t /usr/include/GL/ include/GL/gl{,u,ut}.h  &&
  install -m644 -t /usr/include/GL/ include/GL/gle{w,xt}.h  &&

  ./configure --prefix=/usr $OPTS  &&
  prepare_install  &&

  make all  &&
  make install  &&                 

  install -v -m755 progs/xdemos/glx{gears,info} /usr/bin/

) > $C_FIFO 2>&1
