(

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  if [ ! -d /opt/lunar/plugins ] ; then
    mkdir /opt/lunar/plugins
  fi &&

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX       \
        -DCMAKE_BUILD_TYPE=RELEASE                  \
        -DMOZPLUGIN_INSTALL_DIR=/opt/lunar/plugins  \
        $OPTS .                                    &&

  default_make

) > $C_FIFO 2>&1
