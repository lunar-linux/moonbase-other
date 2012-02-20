(

  sedit "s: texmf/scripts/: share/texmf/scripts/:" utils/psutils/Makefile.in  &&

  # Only build psutils
  OPTS+=" --disable-all-pkgs --enable-psutils --enable-ipc --enable-shared --enable-static=no --disable-multiplatform --disable-native-texlive-build --with-gs=gs"  &&

  if ! module_installed libX11 ; then
    # Prevents risk of circular dependency: groff -> man -> libX11
    OPTS+=" --without-x"
  fi  &&

  default_build

) > $C_FIFO 2>&1
