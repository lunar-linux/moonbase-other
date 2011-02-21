(

  if [[ -n $MESADRIVER ]] ; then
    # Build selected drivers only, rather than the default of all of them
    # Ensure that swrast is included, as a fall-back
    OPTS+=" --with-dri-drivers=swrast,"  &&
    OPTS+=$(echo $MESADRIVER | sed s/\ /,/g)
  fi  &&

  # Don't overlap with freeglut
  OPTS+=" --disable-glut"  &&
  # Needed with mesa-lib 7.8.2
  rm -f include/GL/glut{,f90}.h  &&

  ./configure --prefix=/usr $OPTS  &&
  prepare_install  &&

  make all  &&

  # Build glxgears and glxinfo
  cd progs/xdemos  &&
  make glxgears glxinfo  &&
  cd ../..  &&

  # glew headers are installed from the glew module instead
  rm -f include/GL/{glew,glxew,wglew}.h  &&

  make install  &&

  install -v -m755 progs/xdemos/glx{gears,info} /usr/bin/

) > $C_FIFO 2>&1
