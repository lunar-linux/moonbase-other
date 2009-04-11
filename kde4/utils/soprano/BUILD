(

  if module_installed sun-jdk; then
    . /etc/profile.d/sun-jdk.rc
  else
    if module_installed sun-jre; then
      . /etc/profile.d/sun-jre.rc
    fi
  fi  &&

  source /etc/profile.d/qt4.rc  &&
  
  cmake ./ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX                \
           -DENABLE_FAM:BOOL=ON -DENABLE_EXPAT:BOOL=ON          \
           -DENABLE_INOTIFY:BOOL=O -DCMAKE_BUILD_TYPE=RELEASE  &&

  default_make

) > $C_FIFO 2>&1
