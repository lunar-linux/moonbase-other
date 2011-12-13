(

  export TBBROOTDIR=$SOURCE_DIRECTORY &&
  export PATH=$MODULE_PREFIX::$PATH  &&
  export LD_LIBRARY_PATH=$TBBROOT/lib &&

  make &&
  prepare_install &&
  mkdir -p /usr/include/tbb &&
  install `find include/tbb/ -name "*.h" -print` /usr/include/tbb/ &&
  cd build/linux_intel*release &&
  install `find . -name "*.so*" -print` /usr/lib/ &&

  echo export TBBROOT=\"/usr\" > $SOURCE_DIRECTORY/tbb.rc &&
  echo export PATH=\"'${PATH}':'${TBBROOT}'/bin\" >> $SOURCE_DIRECTORY/tbb.rc &&

  install -m644 $SOURCE_DIRECTORY/tbb.rc /etc/profile.d/

) > $C_FIFO 2>&1
