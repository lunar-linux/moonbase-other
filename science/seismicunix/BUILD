(

  export CWPROOT
  cd $CWPROOT/src

  cp $SCRIPT_DIRECTORY/Makefile.config .

  sedit "s:^OPTC:OPTC=$CFLAGS #:"             Makefile.config
  sedit "s:^C++FLAGS:C++FLAGS=$CXXFLAGS #:"   Makefile.config

  prepare_install &&
  make install &&
  if module_installed xfree86 ; then
    make xtinstall
  fi &&
  if [ "$BUILD_GL" == "on" ] ; then
    make mglinstall
  fi &&
  make utils &&
  if module_installed xfree86 ; then
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
