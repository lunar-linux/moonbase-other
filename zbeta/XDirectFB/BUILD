(
  # Make sure we are in the right dir
  cd $SOURCE_DIRECTORY/xc								&&

  # Change the default place of install
  cat config/cf/host.def | sed 's\/usr/local\/opt/lunar/DirectFB\' > config/cf/host.def	&&

  # Build
  make World										&&
  make install

) > $C_FIFO 2>&1
