(

  AVAILABLE_MODULES="calendar cpu deskshow devian emu eveil evolume flame language mbar mem moon mount net rain screenshot slideshow snow tclock uptime weather wlan"

  export PATH="$MODULE_PREFIX/bin:$PATH"
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"

  for module in $AVAILABLE_MODULES; do
    pushd $module        &&
    message "\n\nBuilding Module: ${module}\n"  &&

    # seperate them out so that prepare_install isn't called each time
    default_cvs_config   &&
    make
    popd
  done  &&
 
  prepare_install  &&
  for module in $AVAILABLE_MODULES; do
    pushd $module        &&
    message "\n\nInstalling Module: ${module}\n"  &&
    make install
    popd
  done

) > $C_FIFO 2>&1
