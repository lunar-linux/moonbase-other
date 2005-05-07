(
  # Make sure we are in the right dir
  cd $SOURCE_DIRECTORY/xc &&

  # Change the default place of install
  sedit 's:/usr/local:/opt/lunar/DirectFB:' config/cf/host.def &&

  # Build
  make World &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
