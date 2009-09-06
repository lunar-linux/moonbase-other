(

  OPTS+=" --with-dri-drivers=" &&
  OPTS+=$(echo $MESADRIVER | sed s/\ /,/g) &&

  # Copy some headers, to avoid this error:
  # /usr/include/GL/glew.h:1138:20: error: GL/glu.h: No such file or directory
  # samplers.c:43:21: error: GL/glut.h: No such file or directory

  # The problem is the inter-relation of mesa-lib, glew, and glut libs.
  # mesa-lib 7.5.1 introduced a dependency on glew.
  mkdir -p /usr/include/GL/ &&
  install -m644 -t /usr/include/GL/ include/GL/gl{,u,ut}.h &&

  ./configure --prefix=/usr $OPTS &&
  prepare_install &&

  make all &&
  make install &&                 

  install -v -m755 progs/xdemos/glx{gears,info} /usr/bin/

) > $C_FIFO 2>&1
