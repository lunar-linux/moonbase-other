(

  export CWPROOT
  cd $CWPROOT/src

  prepare_install &&
  make install &&
  if [ "$USE_X11" == "y" ]; then
    make xtinstall
  fi &&
  if [ "$BUILD_GL" == "on" ] ; then
    make mglinstall
  fi &&
  make utils &&
  if [ "$USE_X11" == "y" ]; then
    make xminstall
  fi &&
  make sfinstall &&

  # Now this is a dumb install ;-)
  mkdir -p /opt/lunar/su/src                                        &&
  cp -R $CWPROOT/bin $CWPROOT/lib $CWPROOT/include /opt/lunar/su/   &&
  cp -R $CWPROOT/src/doc /opt/lunar/su/src                          &&
  cp -R $CWPROOT/src/faq /opt/lunar/su/src                          &&
  cp -R $CWPROOT/src/demos /opt/lunar/su/src

) > $C_FIFO 2>&1
