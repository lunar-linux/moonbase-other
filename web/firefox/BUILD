(
  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi  &&

  # This should always be just a link
  rm -rf /usr/lib/firefox-$VERSION/plugins  &&

  export MOZILLA_HOME=/usr/lib/$MODULE-$VERSION
  export MOZ_CO_PROJECT=browser
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1

  cp $SCRIPT_DIRECTORY/mozconfig mozilla/  &&

  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla"
  mkdir -p ${MOZ_OBJDIR}  &&

  cd mozilla  &&

  #Add DEPENDS options

  if in_depends $MODULE dbus ; then
    echo "ac_add_options --enable-dbus" >> mozconfig
  else
    echo "ac_add_options --disable-dbus" >> mozconfig
  fi  &&

  if in_depends $MODULE sqlite ; then
    echo "ac_add_options --enable-system-sqlite" >> mozconfig
  fi  &&

  if in_depends $MODULE heimdal ; then
    echo "ac_add_options --with-gssapi=/usr/include/heimdal" >> mozconfig
  else
    echo "ac_add_options --without-gssapi" >> mozconfig
  fi  &&

  if in_depends $MODULE "xulrunner" ; then
    XUL=`module_version xulrunner`
    echo "ac_add_options --with-libxul-sdk=/usr/lib/xulrunner-devel-$XUL" >> mozconfig
  fi  &&

  #Add CONFIGURE options
  
  if [ "$SAFE" == "y" ] ; then
    echo "ac_add_options --enable-safe-browsing" >> mozconfig
  fi  &&

  if [ "$WEBSERVICES" == "y" ] ; then
    echo "ac_add_options --enable-webservices" >> mozconfig
  fi  &&

  #Finally, the build!
  if [ "$PGO" == "y" ] ; then
    #CCache breaks the pgo build
    export CCACHE_DISABLE=1
    echo "ac_add_options --enable-profile-guided-optimization" >> mozconfig  &&
    echo "mk_add_options PROFILE_GEN_SCRIPT='python $MOZ_OBJDIR/_profile/pgo/profileserver.py'" >> mozconfig  &&
    make -f client.mk profiledbuild
  else
    make -f client.mk
  fi  &&

  cd ${MOZ_OBJDIR}  &&
  prepare_install   &&
  make install      &&

  # Put some important headers in place
  mkdir -p /usr/include/firefox-$VERSION/nss  &&
  cp -Lf dist/private/nss/*.h dist/public/nss/*.h /usr/include/firefox-$VERSION/nss  &&

  # Install the plugins in the right directories
  mkdir -p /opt/lunar/plugins  &&
  for plugin in `ls /usr/lib/firefox-$VERSION/plugins`; do
       `install -m755 /usr/lib/firefox-$VERSION/plugins/$plugin /opt/lunar/plugins`; done  &&

  rm -rf /usr/lib/firefox-$VERSION/plugins  &&
  ln -snf /opt/lunar/plugins /usr/lib/firefox-$VERSION/plugins  &&

  # Now the .desktop file and the icon
  mkdir -p /usr/share/applications /usr/share/pixmaps  &&
  install -m644 $SCRIPT_DIRECTORY/firefox.desktop /usr/share/applications  &&
  # please, dont just let the lin fail because /usr/share/pixmaps/firefox.xpm is an existing symlink...
  rm -f /usr/share/pixmaps/firefox.xpm  &&
  install -m644 $MOZILLA_HOME/icons/mozicon50.xpm /usr/share/pixmaps/firefox.xpm  &&

  # Make firefox use its own icon

  rm -rf /usr/lib/firefox-$VERSION/chrome/icons  &&
  mkdir -p /usr/lib/firefox-$VERSION/chrome/icons/default  &&

  for icon in 16 32 48; do
    ln -sf /usr/lib/firefox-$VERSION/icons/mozicon128.png \
           /usr/lib/firefox-$VERSION/chrome/icons/default/default$icon.png
  done

) > $C_FIFO 2>&1
