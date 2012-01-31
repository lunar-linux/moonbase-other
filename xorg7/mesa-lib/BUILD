(

  # Detect VMware VGA virtual 3D card and add driver for it
  VGA=`lspci | grep 'VGA.*VMware.*SVGA.*'`
  if [[ -n $VGA  ]]; then
     bad_flags linker
     SUPPORTED_GALLIUM+="svga"
  fi  &&

  if [[ -n $MESADRIVER ]] ; then
    # Build selected drivers only, rather than the default of all of them
    # Ensure that swrast is included, as a fall-back
    OPTS+=" --with-dri-drivers=swrast,"
    OPTS+=$(echo $MESADRIVER | sed s/\ /,/g)
  fi  &&

  if [[ $GALLIUM == y ]]; then
    OPTS+=" --enable-gallium-llvm --enable-gallium-egl --enable-openvg "
    if [[ -n $SUPPORTED_GALLIUM ]]; then
    OPTS+="--with-gallium-drivers=$(echo $SUPPORTED_GALLIUM | sed s/\ /,/g)"
    fi
  else OPTS+=" --disable-gallium-llvm "
  fi  &&

  if [[ $MESADRIVER == *r[36]00* ]]; then lin -c llvm
  else sedit 's/^GALLIUM_DRIVERS_DEFAULT=.*/GALLIUM_DRIVERS_DEFAULT="swrast"/' configure
  fi  &&

  # Don't overlap with freeglut
  OPTS+=" --disable-glut"  &&
  # Needed with mesa-lib 7.8.2
  rm -f include/GL/glut{,f90}.h  &&

  ./configure --prefix=/usr  $OPTS --with-x --enable-xcb --enable-xorg &&

  prepare_install  &&

  make all  &&

  make install

) > $C_FIFO 2>&1
