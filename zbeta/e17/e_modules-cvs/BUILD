(

  AVAILABLE_MODULES="calendar devian emu evolume flame wlan mbar uptime net mem cpu mount rain screenshot slideshow snow tclock weather"

  export PATH="$MODULE_PREFIX/bin:$PATH"
  export CPPFLAGS="$CPPFLAGS -I$MODULE_PREFIX/include"
  export LDFLAGS="$LDFLAGS -L$MODULE_PREFIX/lib"
  export USER=nobody

  for module in $AVAILABLE_MODULES; do
    pushd $module        &&
    message "\n\nBuilding Module: ${module}\n"  &&

    # seperate them out so that prepare_install isn't called each time
    default_cvs_config   &&
    make                 &&
    popd
  done
 
  prepare_install  &&
  for module in $AVAILABLE_MODULES; do
    pushd $module        &&
    message "\n\nInstalling Module: ${module}\n"  &&
    make install         &&
    popd
  done

) > $C_FIFO 2>&1
