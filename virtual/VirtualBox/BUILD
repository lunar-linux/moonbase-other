(

  # Disable qt3
  sedit s@WITH_QT3=1@WITH_QT3=0@ configure &&

  # We need the qt4 paths
  . /etc/profile.d/qt4.rc &&

  # Build VirtualBox
  # Disable hardening, so normal users can run it
  OPTS+=" --disable-hardening"   &&
  OPTS+=" --with-qt4-dir=$QTDIR" &&
  ./configure $OPTS              &&
  source ./env.sh                &&
  kmk                            &&

  # Build source package for kernel module
  pushd out/linux.x86/release/bin/ &&
  message "Building ${MODULE_COLOR}virtualbox-module-${VERSION_COLOR}${VERSION}${DEFAULT_COLOR}." &&
  message "This may take a while..." &&
  tar -cjf $SOURCE_CACHE/virtualbox-module-$VERSION.tar.bz2 src &&
  popd &&

  # Prepare for installation
  prepare_install &&

  # Create install directory
  mkdir -p $MODULE_PREFIX &&

  # Install contents of the build directory
  cp -R out/linux.x86/release/bin/* $MODULE_PREFIX &&

  # Install the startup script to /usr/bin
  install -m 755 $SCRIPT_DIRECTORY/VirtualBox /usr/bin &&

  # Substitute $INSTALL_DIR with the module prefix
  sedit 's:$INSTALL_DIR:'$MODULE_PREFIX':g' /usr/bin/VirtualBox &&

  # Install the config file to let VirtualBox know it is installed
  mkdir -p /etc/vbox &&
  echo "INSTALL_DIR=$MODULE_PREFIX" > /etc/vbox/vbox.cfg &&

  # Install .desktop entry and icon, then update the icon cache
  install -D -m644 /usr/lib/virtualbox/virtualbox.desktop /usr/share/applications/virtualbox.desktop &&
  install -D -m644 /usr/lib/virtualbox/VBox.png /usr/share/icons/hicolor/32x32/apps/VBox.png &&
  gtk-update-icon-cache /usr/share/icons/hicolor &&

  # Create the vboxusers group
  groupadd -f vboxusers

) > $C_FIFO 2>&1
