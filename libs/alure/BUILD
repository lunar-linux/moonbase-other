(

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        -DBUILD_STATIC=OFF                     \
        $OPTS .                               &&

  default_make

) > $C_FIFO 2>&1
