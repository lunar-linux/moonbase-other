(

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        -Wno-dev                               \
        $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
