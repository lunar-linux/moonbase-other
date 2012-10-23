(

  sedit 's/@PRE_RELEASE_SUFFIX@//g' mozilla/browser/base/content/browser.xul &&

  # Reverse patch which causes seamonkey build to break
  bzcat $SOURCE_CACHE/Bug-515374.patch.bz2 | patch -p1 -R -d mozilla &&

  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi  &&

  # Adds support for libvpx 1.0. Later firefox will have this fix so remove this then.
  sedit 's/VPX_CODEC_USE_INPUT_PARTITION/VPX_CODEC_USE_INPUT_FRAGMENTS/' mozilla/configure  &&
  sedit 's/v0\.9\.7/v1.0.0/' configure  &&

  export MOZ_CO_PROJECT=suite  &&
  export MOZILLA_HOME=/usr/lib/$MODULE-$VERSION &&
  export MOZILLA_OFFICIAL=1  &&
  export BUILD_OFFICIAL=1  &&
  export MOZ_MAKE_FILES=$MAKES  &&
  export MOZ_OPTIMIZE_FLAGS="$CFLAGS" &&
  export MOZ_DEBUG_FLAGS="$CFLAGS" &&

  cp $SCRIPT_DIRECTORY/mozconfig .  &&
  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla"  &&
  mkdir -p ${MOZ_OBJDIR}  &&

  #Add DEPENDS options

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

  if in_depends $MODULE libffi ; then
    echo "ac_add_options --enable-system-ffi" >> mozconfig
  else
    echo "ac_add_options --disable-system-ffi" >> mozconfig
  fi  &&

  if in_depends $MODULE sun-jdk ; then
    echo "ac_add_options --with-java-bin-path=/usr/java/default/bin" >> mozconfig
  fi  &&

  #Add CONFIGURE options

  if [ "$SAFE" == "y" ] ; then
    echo "ac_add_options --enable-safe-browsing" >> mozconfig
  fi  &&

  if in_depends $MODULE openldap ; then
    echo "ac_add_options --enable-ldap" >> mozconfig
  else
    echo "ac_add_options --disable-ldap" >> mozconfig
  fi  &&

  setterm -bfreq -blength &&

  #Finally, the build!
  make -f client.mk build ${MAKES:+-j${MAKES}}  &&

  cd ${MOZ_OBJDIR}  &&
  prepare_install   &&
  make install      || exit 1

  # Now the .desktop file and icons
  install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/seamonkey.desktop  &&

  for s in 16 22 24 32 48 256 ; do
    install -Dm 644 $SOURCE_DIRECTORY/mozilla/browser/branding/official/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/seamonkey.png
  done  &&
  if [ -x /usr/bin/gtk-update-icon-cache -a -f /usr/share/icons/hicolor/index.theme ]; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor
  fi

) > $C_FIFO 2>&1
