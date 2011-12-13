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

  mkdir -p /usr/include/tbb/machine  &&
  mkdir -p /usr/include/tbb/internal &&
  ln -sf /usr/include/tbb/linux_intel64.h /usr/include/tbb/machine/linux_intel64.h &&
  ln -sf /usr/include/tbb/linux_common.h /usr/include/tbb/machine/linux_common.h   &&
  ln -sf /usr/include/tbb/_concurrent_unordered_impl.h /usr/include/tbb/internal/_concurrent_unordered_impl.h &&
  ln -sf /usr/include/tbb/_concurrent_queue_impl.h /usr/include/tbb/internal/_concurrent_queue_impl.h &&

  echo export TBBROOT=\"/usr\" > $SOURCE_DIRECTORY/tbb.rc &&
  echo export PATH=\"'${PATH}':'${TBBROOT}'/bin\" >> $SOURCE_DIRECTORY/tbb.rc &&

  install -m644 $SOURCE_DIRECTORY/tbb.rc /etc/profile.d/

) > $C_FIFO 2>&1
