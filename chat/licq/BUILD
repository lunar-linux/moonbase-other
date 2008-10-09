( 
  patch_it $SOURCE_CACHE/$SOURCE2 0

  CONSOLE_PLUGIN="no"
  QT_PLUGIN="no"
  MSN_PLUGIN="no"
  OSD_PLUGIN="no"

  # Determine which plugins to build
  if in_depends licq cdk; then
    CONSOLE_PLUGIN="yes"
  fi
  if in_depends licq qt3; then
    QT_PLUGIN="yes"
  fi
  if in_depends licq openssl; then
    MSN_PLUGIN="yes"
  fi
  if in_depends licq xosd; then
    OSD_PLUGIN="yes"
  fi

  # Print plugin information
  echo
  echo "The following plugins will be compiled:"
  echo
  echo "  * Console frontend: ${CONSOLE_PLUGIN}"
  echo "  * Qt3 frontend: ${QT_PLUGIN}"
  echo "  * MSN support: ${MSN_PLUGIN}"
  echo "  * OSD support: ${OSD_PLUGIN}"
  echo

  # Load KDE profile
  if in_depends licq kdelibs3; then
    . /etc/profile.d/kde3.rc
  fi

  default_config &&
  make &&

  # Compile console plugin
  if [[ "$CONSOLE_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/console &&
    default_config &&
    make
  fi &&

  # Compile Qt frontend
  if [[ "$QT_PLUGIN" = "yes" ]]; then
    . /etc/profile.d/qt3.rc &&
    cd $SOURCE_DIRECTORY/plugins/qt-gui &&
    default_config &&
    make
  fi &&

  # Compile MSN support
  if [[ "$MSN_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/msn &&
    default_config &&
    make
  fi &&

  # Compile OSD plugin
  if [[ "$OSD_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/osd &&
    default_config &&
    make
  fi &&

  # Install licq 
  prepare_install &&
  cd $SOURCE_DIRECTORY &&
  make install &&

  # Install console plugin
  if [[ "$CONSOLE_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/console &&
    make install
  fi &&

  # Install Qt frontend
  if [[ "$QT_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/qt-gui &&
    make install
  fi &&

  # Install MSN support
  if [[ "$MSN_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/msn &&
    make install
  fi &&

  # Install OSD plugin
  if [[ "$OSD_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/osd &&
    make install
  fi

) > $C_FIFO 2>&1
