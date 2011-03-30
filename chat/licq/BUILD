( 

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=/usr   \
                           -DCMAKE_BUILD_TYPE=RELEASE    \
                           $OPTS                        &&

  default_make &&

# Install some plugins.
  if in_depends $MODULE qt4 ; then
    cd ../plugins/qt4-gui &&
    cmake . &&
    default_make
  fi &&

  if [ $USE_MSN == "y" ] ; then
    cd ../msn &&
    cmake . &&
    default_make 
  fi &&

  if [ $USE_RMS =="y" ] ; then
    cd ../rms &&
    cmake . &&
    default_make 
  fi &&

  if [$USE_JABBER == "y" ] ; then
    cd ../jabber &&
    cmake . &&
    default_make
  fi &&

  if [ $USE_FORWARD == "y" ] ; then
    cd ../forwarder &&
    cmake . &&
    default_make
  fi &&

  if [ $USE_AUTO_REPLY == "y" ] ; then
    cd ../auto-reply &&
    cmake . &&
    default_make
  fi &&

  if in_depends $MODULE libaosd ; then
    cd ../aosd &&
    cmake . &&
    default_make
  fi &&

  if [ $BUILD_CONSOLE == "y" ] ; then
    cd ../console &&
    cmake . &&
    default_make
  fi 

) > $C_FIFO 2>&1
