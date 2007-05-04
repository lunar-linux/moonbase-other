(

  ./configure      \
  $OPTS           &&

  make            &&
  cp ${SCRIPT_DIRECTORY}/lunar_install.locations  \
     ${SOURCE_DIRECTORY}/build/install.locations &&

  prepare_install &&
  make install

) > $C_FIFO 2>&1
