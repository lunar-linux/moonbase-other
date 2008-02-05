(

  source /etc/profile.d/qt4.rc &&

  cmake ./ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1
