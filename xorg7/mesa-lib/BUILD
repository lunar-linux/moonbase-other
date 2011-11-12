(

  # Detect VMware VGA virtual 3D card and add driver for it
  VGA=`lspci | grep 'VGA.*VMware.*SVGA.*'`

  if [[ -n $MESADRIVER ]] ; then
    # Gallium build breaks with LDFLAGS set so turn it off for now
    bad_flags linker
    # Build selected drivers only, rather than the default of all of them
    # Ensure that swrast is included, as a fall-back
    OPTS+=" --with-dri-drivers=swrast,"
    OPTS+=$(echo $MESADRIVER | sed s/\ /,/g)
    if [[ $GALLIUM == y ]]; then
      OPTS+=" --enable-gallium-swrast "
      if [[ $MESADRIVER == *i915* ]]; then
        OPTS+=" --enable-gallium-i915 "
      fi
      if [[ $MESADRIVER == *i965* ]]; then
        OPTS+=" --enable-gallium-i965 "
      fi
      # Nouveau breaks build in mesa 7.10.2
      if [[ $MESADRIVER == *nouveau* ]]; then
        OPTS+=" --enable-gallium-nouveau "
      fi
      if [[ $MESADRIVER == *radeon* ]]; then
        OPTS+=" --enable-gallium-radeon "
      fi
      if [[ $MESADRIVER == *r600* ]]; then
        OPTS+=" --enable-gallium-r600 "
      fi
      if [[ $VGA == *VMware* ]]; then
        OPTS+=" --enable-gallium-svga "
      fi
    fi
  fi  &&


  # Don't overlap with freeglut
  OPTS+=" --disable-glut"  &&
  # Needed with mesa-lib 7.8.2
  rm -f include/GL/glut{,f90}.h  &&

  ./configure --prefix=/usr --with-x --enable-xcb --enable-gles1 --enable-gles2 --enable-gles-overlay --enable-openvg $OPTS  &&
  prepare_install  &&

  make all  &&

  # glew headers are installed from the glew module instead
  rm -f include/GL/{glew,glxew,wglew}.h  &&

  make install

) > $C_FIFO 2>&1
