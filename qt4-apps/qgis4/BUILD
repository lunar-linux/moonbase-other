(

# Fixes up some translation problems, recheck on next bump.
  /opt/lunar/qt/4/bin/lupdate -no-obsolete -ts i18n/*.ts &&

  source /etc/profile.d/qt4.rc &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1

