(

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        -DTARGET_ARCHITECTURE=auto             \
        $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
