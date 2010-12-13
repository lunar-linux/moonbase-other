(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build" &&

# Fixes make barf dealing with dtd/kdex.dtd.
  sedit "s:V4.1.2:V4.2:" doc/nl/index.docbook &&

  source /etc/profile.d/qt4.rc  &&
  source /etc/profile.d/kde4.rc &&

  mkdir $OOSB_DIR &&
  cd $OOSB_DIR &&


  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make  

) > $C_FIFO 2>&1
