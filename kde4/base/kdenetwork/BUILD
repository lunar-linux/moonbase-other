(

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  if [ ! -d /opt/lunar/plugins ] ; then
    mkdir /opt/lunar/plugins
  fi &&

  OPTS+=" -DMOZPLUGIN_INSTALL_DIR=/opt/lunar/plugins" &&

  default_cmake_build
  
) > $C_FIFO 2>&1
