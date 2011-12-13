(

  export TBBROOTDIR=$SOURCE_DIRECTORY &&
  export PATH=$MODULE_PREFIX::$PATH  &&
  export LD_LIBRARY_PATH=$TBBROOT/lib &&

#  cd src &&
#  make release &&
  default_make
#  prepare_install &&
#  make install

  echo export TBBROOT=\"/usr\" > $SOURCE_DIRECTORY/tbb.rc &&
  echo export PATH=\"'${PATH}':'${TBBROOT}'/bin\" >> $SOURCE_DIRECTORY/tbb.rc &&

  install -m644 $SOURCE_DIRECTORY/tbb.rc /etc/profile.d/

) > $C_FIFO 2>&1
