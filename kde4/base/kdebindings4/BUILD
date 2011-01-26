(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  if in_depends $MODULE Falcon ; then
    OPTS="-DFALCON_INCLUDE_PATH=/usr/include/falcon-`lvu version Falcon`/falcon"
  fi &&

  if in_depends $MODULE qwt ; then
    QWT_VER=`lvu version qwt` &&
    Qwt5_INCLUDE_DIR="/usr/qwt-$QWT_VER/include/qwt.h"
  fi &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX       \
                           -DENABLE_QYOTO=off                          \
                           -DCMAKE_BUILD_TYPE=RELEASE                  \
                           $OPTS                                      &&

  default_make

) > $C_FIFO 2>&1
