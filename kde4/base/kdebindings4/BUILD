(

#  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

#  mkdir $OOSB_DIR  &&
#  cd $OOSB_DIR     &&

#  if in_depends $MODULE ruby ; then
#    OPTS="-DRUBY_INCLUDE_PATH=/usr/lib/ruby/`lvu version ruby|cut -c 1-3`/"
#  fi &&

  if in_depends $MODULE sun-jdk ; then
    . /etc/profile.d/sun-jdk.rc
#    JAVA_AWT_LIBRARY_PATH=$JAVA_HOME/jre/lib/amd64/ &&
#    JAVA_INCLUDE_PATH=$JAVA_HOME/include/           &&
#    JAVA_AWT_INCLUDE_PATH=$JAVA_HOME/include/       
  fi &&

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        $OPTS .                               &&

  default_make

) > $C_FIFO 2>&1
