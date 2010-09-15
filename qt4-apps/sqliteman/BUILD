(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build" &&

# A little jiggling of the .desktop so an icon is shown and its devfault placement
# is not in Lost and Found.
  sedit "s:Icon=sqliteman:Icon=/usr/share/sqliteman/icons/sqliteman.png:" sqliteman.desktop &&
  sed -i "11i Categories=Qt;KDE;Development;" sqliteman.desktop &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1
