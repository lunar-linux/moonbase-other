(
  #lets disable qt3
  sedit s@WITH_QT3=1@WITH_QT3=0@ configure &&

  # We need the qt4 paths
  . /etc/profile.d/qt4.rc &&

  # Build VirtualBox
  # Disable hardending so normal users can run it
  OPTS+=" --disable-hardening"   &&
  OPTS+=" --with-qt4-dir=$QTDIR" &&
  ./configure $OPTS             &&
  source ./env.sh               &&
  kmk                           &&

  # Build kernel module
  pushd out/linux.x86/release/bin/src &&
  make &&
  popd &&

  # Prepare for installation
  prepare_install &&

  # Create install directory
  mkdir -p $MODULE_PREFIX &&

  # Install contents of the build directory
  cp -R out/linux.x86/release/bin/* $MODULE_PREFIX &&

  # Install kernel module
  pushd out/linux.x86/release/bin/src &&
  make install &&
  popd &&

  # Install the startup script to /usr/bin
  install -m 755 $SCRIPT_DIRECTORY/VirtualBox /usr/bin &&

  # Substitute $INSTALL_DIR with the module prefix
  sedit 's:$INSTALL_DIR:'$MODULE_PREFIX':g' /usr/bin/VirtualBox &&

  # Install the config file to let VirtualBox know it is installed
  mkdir -p /etc/vbox &&
  echo "INSTALL_DIR=$MODULE_PREFIX" > /etc/vbox/vbox.cfg &&

  #Install .desktop entry and icon
  install /usr/lib/virtualbox/VirtualBox.desktop /usr/share/applications/
  install /usr/lib/virtualbox/VBox.png /usr/share/icons/hicolor/32x32/apps/

  # Create the vboxusers group
  groupadd -f vboxusers

) > $C_FIFO 2>&1
