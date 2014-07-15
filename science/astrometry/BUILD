
  rm -rf astrometry &&
  for file in $(find . -name '*'.c |cut -c 3-50) ; do
   sedit "s:<netpbm::g" $file
  done &&

  make &&
  make py &&
  make extra &&
  prepare_install &&
  export INSTALL_DIR=/usr &&
  export ETC_INSTALL_DIR=/etc &&
  make install 
