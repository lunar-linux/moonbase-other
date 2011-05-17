(

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        $OPTS .                               &&

  default_make

) > $C_FIFO 2>&1
