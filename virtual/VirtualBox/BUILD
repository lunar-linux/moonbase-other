(

  # Fixes a gcc 4.4 build failure.
  echo "VBOX_WITH_TESTCASES =" > LocalConfig.kmk &&

  if in_depends $MODULE sun-jdk ; then
    # Location of javac
    . /etc/profile.d/sun-jdk.rc &&
    export VBOX_JAVA_HOME=$JAVA_HOME
  fi &&

  if in_depends $MODULE qt4 ; then
    # We need the qt4 paths
    . /etc/profile.d/qt4.rc &&
    sedit "s:qt4/lib/pkgconfig:qt4/pkgconfig:g" configure
  fi &&

  # Build VirtualBox
  # Disable hardening, so normal users can run it
  OPTS+=" --disable-hardening"  &&
  ./configure $OPTS             &&
  source ./env.sh               &&
  if ! module_installed Linux-PAM ; then
     sedit "s/VBOX_WITH_PAM/VBOX_WITHOUT_PAM/" Config.kmk
  fi   &&
  kmk  &&

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
  cp -R out/linux.x86/release/bin/* $MODULE_PREFIX/ &&

  cp $SCRIPT_DIRECTORY/VirtualBox . &&
  # Substitute $INSTALL_DIR with the module prefix
  sedit 's:$INSTALL_DIR:'$MODULE_PREFIX':g' VirtualBox &&
  # Install the startup script to /usr/bin
  install -m 755 VirtualBox /usr/bin/ &&

  # Install the config file to let VirtualBox know it is installed
  echo "INSTALL_DIR=$MODULE_PREFIX" >  vbox.cfg &&
  install -Dm 644 {,/etc/vbox/}vbox.cfg &&

  if in_depends $MODULE qt4 ; then
    # File path for PDF, and make name more recognizable
    sed -i -e "s:/opt/VirtualBox/:/usr/share/doc/VirtualBox/:" -e "s:Oracle VM VirtualBox:VirtualBox Oracle VM:1" /usr/lib/virtualbox/virtualbox.desktop &&
    # Install .desktop entry and icon, then update the icon cache
    install -Dm 644 /usr/{lib/virtualbox,share/applications}/virtualbox.desktop    &&
    install -Dm 644 /usr/{lib/virtualbox,share/icons/hicolor/32x32/apps}/VBox.png  &&
    if [ -x /usr/bin/gtk-update-icon-cache ] ; then
      gtk-update-icon-cache /usr/share/icons/hicolor
    fi
  fi &&

  if in_depends $MODULE texlive ; then
    install -Dm 644 /usr/{lib/virtualbox,share/doc/VirtualBox}/UserManual.pdf
  fi &&

  # Create the vboxusers group
  groupadd -f vboxusers

) > $C_FIFO 2>&1
