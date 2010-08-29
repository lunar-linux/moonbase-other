(

  KDE4_BUILD_DIR="$SOURCE_DIRECTORY/kde4-build"  &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  mkdir $KDE4_BUILD_DIR  &&
  cd $KDE4_BUILD_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make &&

# This used to be installed by kdelibs4 but will be over written by 
# kdebase4-runtime causing a conflict. So lets just move it here from 
# kdelibs4 and be done with it.

  install -m0755 $SCRIPT_DIRECTORY/kde4 /usr/bin/

) > $C_FIFO 2>&1
