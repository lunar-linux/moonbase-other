( 

  CONSOLE_PLUGIN="no"
  QT_PLUGIN="no"
  QT4_PLUGIN="no"
  MSN_PLUGIN="no"
  OSD_PLUGIN="no"

  # Determine which plugins to build
  if in_depends licq cdk; then
    CONSOLE_PLUGIN="yes"
  fi
  if in_depends licq qt4; then
    QT4_PLUGIN="yes"
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
  echo "  * Qt4 frontend: ${QT4_PLUGIN}"
  echo "  * MSN support: ${MSN_PLUGIN}"
  echo "  * OSD support: ${OSD_PLUGIN}"
  echo

  default_config &&
  make &&

  # Compile console plugin
  if [[ "$CONSOLE_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/console &&
    default_config &&
    make
  fi &&

  # Compile Qt4 frontend
  if [[ "$QT4_PLUGIN" = "yes" ]]; then
    . /etc/profile.d/qt4.rc &&
    cd $SOURCE_DIRECTORY/plugins/qt4-gui &&
    cmake $SOURCE_DIRECTORY/plugins/qt4-gui -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
                                            -DCMAKE_BUILD_TYPE=RELEASE            &&
    default_make
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

  # Install Qt4 frontend
  if [[ "$QT4_PLUGIN" = "yes" ]]; then
    cd $SOURCE_DIRECTORY/plugins/qt4-gui &&
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
