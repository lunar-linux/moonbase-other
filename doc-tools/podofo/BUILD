(

  . /etc/profile.d/qt4.rc &&

  LDFLAGS="-ldl" &&

  PODOFO_BUILD_DIR="$SOURCE_DIRECTORY/podofo-build" &&

  mkdir $PODOFO_BUILD_DIR &&
  cd $PODOFO_BUILD_DIR &&


  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           -DPODOFO_BUILD_SHARED:BOOL=TRUE       &&

  default_make  

) > $C_FIFO 2>&1
 
