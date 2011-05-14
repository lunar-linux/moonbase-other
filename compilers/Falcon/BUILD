(

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        $OPTS  .                              &&

  default_make  &&

  ln -sf /usr/include/falcon`lvu version Falcon | cut -c 1-5`/falcon /usr/include/falcon

) > $C_FIFO 2>&1
