(

  if module_installed sun-jdk; then
    JAVA_VERSION=`installed_version sun-jdk`;
    export JAVA_HOME="/usr/lib/jdk${JAVA_VERSION}";
  else
    JAVA_VERSION=`installed_version j2sdk`;
    export JAVA_HOME="/usr/lib/j2sdk${JAVA_VERSION}";
  fi &&

  source /etc/profile.d/qt4.rc &&
  
  cmake ./ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX               \
           -DENABLE_FAM:BOOL=ON -DENABLE_EXPAT:BOOL=ON         \
           -DENABLE_INOTIFY:BOOL=O -DCMAKE_BUILD_TYPE=RELEASE &&

  default_make

) > $C_FIFO 2>&1
