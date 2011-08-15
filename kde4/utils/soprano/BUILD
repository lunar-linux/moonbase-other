(

  OPTS+=" -DRAPTOR_INCLUDE_DIR=/usr/include/raptor2" &&

  if module_installed sun-jdk; then
    . /etc/profile.d/sun-jdk.rc
  else
    if module_installed sun-jre; then
      . /etc/profile.d/sun-jre.rc
    fi
  fi  &&

  source /etc/profile.d/qt4.rc  &&

  default_cmake_build

) > $C_FIFO 2>&1
