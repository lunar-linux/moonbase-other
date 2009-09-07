(

  OPTS+=" --with-dri-drivers="  &&
  OPTS+=$(echo $MESADRIVER | sed s/\ /,/g)  &&

  # Excludes glew headers, and prevents need for /usr/include/GL/gl{,u,ut}.h
  rm -r progs/{demos,samples}  &&

  ./configure --prefix=/usr $OPTS  &&
  prepare_install  &&

  make all  &&

  # Build glxgears and glxinfo
  cd progs/xdemos  &&
  make glxgears glxinfo  &&
  cd ../..  &&

  make install  &&                 

  install -v -m755 progs/xdemos/glx{gears,info} /usr/bin/

) > $C_FIFO 2>&1
