
  sedit "s:avidemux2_gtk:avidemux3_qt4:" $SOURCE_DIRECTORY/avidemux2.desktop &&
  sedit "s:Icon=avidemux:Icon=avidemux_icon.png:" $SOURCE_DIRECTORY/avidemux2.desktop &&

  sh bootStrap.bash &&
  cd addons/fontGen &&
  cmake . &&
  make &&
  cd ../tsscan &&
  make &&
  cd $SOURCE_DIRECTORY &&
  prepare_install &&
  cp -R install/usr/bin/* /usr/bin/ &&
  cp -R install/usr/include/* /usr/include/ &&
  cp -R install/usr/lib64/* /usr/lib/ &&
  cp -R install/usr/share/* /usr/share/ &&
  install addons/ad2_vcdimager/ad2_vcdimager /usr/bin/ &&
  install addons/aviscan/aviscan /usr/bin/ &&
  install addons/tsscan/tsscan /usr/bin/ &&
  install $SOURCE_DIRECTORY/avidemux2.desktop /usr/share/applications/ &&
  install $SOURCE_DIRECTORY/avidemux_icon.png /usr/share/icons/
