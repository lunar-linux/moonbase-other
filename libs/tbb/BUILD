(

  export TBBROOTDIR=$SOURCE_DIRECTORY &&
  export PATH=$MODULE_PREFIX::$PATH  &&
  export LD_LIBRARY_PATH=$TBBROOT/lib &&

  make &&
  prepare_install &&
  mkdir -p /usr/include/tbb/{machine,internal,compat}  &&
  mkdir -p /usr/include/serial/tbb &&
  install `find include/tbb/machine -name "*.h" -print` /usr/include/tbb/machine &&
  install `find include/tbb/internal -name "*.h" -print` /usr/include/tbb/internal &&
  install `find include/tbb/compat -name "*.h" -print` /usr/include/tbb/compat &&
  install `find include/serial/tbb -name "*.h" -print` /usr/include/serial/tbb &&
  install include/tbb/*.h /usr/include/tbb &&

  cd build/linux_intel*release &&
  install `find . -name "*.so*" -print` /usr/lib/ &&

  echo export TBBROOT=\"/usr\" > $SOURCE_DIRECTORY/tbb.rc &&
  echo export PATH=\"'${PATH}':'${TBBROOT}'/bin\" >> $SOURCE_DIRECTORY/tbb.rc &&

  install -m644 $SOURCE_DIRECTORY/tbb.rc /etc/profile.d/

) > $C_FIFO 2>&1
