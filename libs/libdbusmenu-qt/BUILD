(

  . /etc/profile.d/qt4.rc &&

  export LDFLAGS="-L/usr/lib/qt4" &&

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        $OPTS .                               &&

  default_make

) > $C_FIFO 2>&1
