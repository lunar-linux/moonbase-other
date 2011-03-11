(

  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
    set_module_config OLD_VER "`installed_version $MODULE`"
  fi  &&

  export MOZ_CO_PROJECT=browser  &&
  export MOZILLA_OFFICIAL=1  &&
  export BUILD_OFFICIAL=1  &&

  cp $SCRIPT_DIRECTORY/mozconfig .  &&

  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla"  &&
  mkdir -p ${MOZ_OBJDIR}  &&

  echo "ac_add_options --disable-necko-wifi" >> mozconfig  &&
  echo "ac_add_options --disable-system-sqlite" >> mozconfig  &&

  #Add DEPENDS options

  if in_depends $MODULE "xulrunner" ; then
    XUL=`module_version xulrunner`  &&
    echo "ac_add_options --with-libxul-sdk=/usr/lib/xulrunner-devel-$XUL" >> mozconfig
  fi  &&

  if in_depends $MODULE gnome-vfs ; then
    echo "ac_add_options --enable-gnomevfs" >> mozconfig
  else
    echo "ac_add_options --disable-gnomevfs" >> mozconfig
  fi  &&

  if in_depends $MODULE libevent ; then
    echo "ac_add_options --with-system-libevent" >> mozconfig
  else
    echo "ac_add_options --without-system-libevent" >> mozconfig
  fi  &&

  if in_depends $MODULE dbus-glib ; then
    echo "ac_add_options --enable-dbus" >> mozconfig
  else
    echo "ac_add_options --disable-dbus" >> mozconfig
  fi  &&

  if in_depends $MODULE sun-jdk ; then
    echo "ac_add_options --with-java-include-path=/usr/java/default/include" >> mozconfig  &&
    echo "ac_add_options --with-java-bin-path=/usr/java/default/bin" >> mozconfig  &&
    echo "ac_add_options --enable-javaxpcom" >> mozconfig
  fi  &&

  #Add CONFIGURE options

  if [ "$SAFE" == "y" ] ; then
    echo "ac_add_options --enable-safe-browsing" >> mozconfig
  fi  &&

  setterm -bfreq -blength &&

  #Finally, the build!
  if [ "$PGO" == "y" ] ; then
    #CCache breaks the pgo build
    export CCACHE_DISABLE=1  &&
    echo "ac_add_options --enable-profile-guided-optimization" >> mozconfig  &&
    echo "mk_add_options PROFILE_GEN_SCRIPT='python $MOZ_OBJDIR/_profile/pgo/profileserver.py'" >> mozconfig  &&
    make -f client.mk build &&
    make -f client.mk profiledbuild
  else
    make -f client.mk build
  fi  &&

  cd ${MOZ_OBJDIR}  &&
  prepare_install   &&
  make install      || exit 1

  MOZILLA_HOME=$(egrep ^moz_libdir= browser/app/firefox | cut -d= -f2)  &&
  LIB_VER=$(echo $MOZILLA_HOME | cut -d\- -f2)  &&
  # Sanity check
  if [[ $MOZILLA_HOME != "/usr/lib"*"firefox"* ]] || [[ $LIB_VER != [1-9]* ]] ; then
    message "${PROBLEM_COLOR}Sanity check on variables failed!${DEFAULT_COLOR}"
    exit 1
  fi  &&
  set_module_config NEW_VER "$LIB_VER"  &&

  # Install the plugins in the right directories
  mkdir -p /opt/lunar/plugins  &&
# There is no plugins in beta8 version of the Firefox
#  for plugin in `ls $MOZILLA_HOME/plugins`; do
#       `install -m755 $MOZILLA_HOME/plugins/$plugin /opt/lunar/plugins`; done  &&

  rm -rf "$MOZILLA_HOME/plugins"  &&
  ln -snf /opt/lunar/plugins "$MOZILLA_HOME/plugins"  &&

  # Now the .desktop file and icons
  install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/firefox.desktop  &&

  # Make firefox use its own icon
  for icon in `ls $MOZILLA_HOME/icons`; do
    ln -sf "$MOZILLA_HOME"/{icons/$icon,chrome/icons/default/$icon}
  done  &&

  for s in 16 22 24 32 48 256 ; do
    install -Dm 644 ../other-licenses/branding/firefox/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/firefox.png
  done  &&
  if [ -x /usr/bin/gtk-update-icon-cache ] ; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor/
  fi

) > $C_FIFO 2>&1
