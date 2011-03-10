(

  MOZILLA_DIR=mozilla-1.9.2 &&

  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  export MOZILLA_HOME=/usr/lib/$MODULE-$VERSION &&
  export MOZ_CO_PROJECT=browser &&
  export MOZILLA_OFFICIAL=1 &&
  export BUILD_OFFICIAL=1 &&

  # This should always be just a link
  rm -rf $MOZILLA_HOME/plugins &&

  cp $SCRIPT_DIRECTORY/mozconfig $MOZILLA_DIR/ &&

  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla" &&
  mkdir -p ${MOZ_OBJDIR} &&

  cd $MOZILLA_DIR &&

  echo "ac_add_options --disable-necko-wifi" >> mozconfig &&
  echo "ac_add_options --disable-system-sqlite" >> mozconfig &&

  #Add DEPENDS options

  if in_depends $MODULE "xulrunner" ; then
    XUL=`module_version xulrunner` &&
    echo "ac_add_options --with-libxul-sdk=/usr/lib/xulrunner-devel-$XUL" >> mozconfig
  fi &&

  if in_depends $MODULE gnome-vfs ; then
    echo "ac_add_options --enable-gnomevfs" >> mozconfig
  else
    echo "ac_add_options --disable-gnomevfs" >> mozconfig
  fi &&

  if in_depends $MODULE sun-jdk ; then
    echo "ac_add_options --with-java-include-path=/usr/java/include" >> mozconfig &&
    echo "ac_add_options --with-java-bin-path=/usr/java/bin" >> mozconfig &&
    echo "ac_add_options --enable-javaxpcom" >> mozconfig
  fi &&

  #Add CONFIGURE options

  if [ "$SAFE" == "y" ] ; then
    echo "ac_add_options --enable-safe-browsing" >> mozconfig
  fi &&

  setterm -bfreq -blength &&

  #Finally, the build!
  if [ "$PGO" == "y" ] ; then
    #CCache breaks the pgo build
    export CCACHE_DISABLE=1 &&
    echo "ac_add_options --enable-profile-guided-optimization" >> mozconfig &&
    echo "mk_add_options PROFILE_GEN_SCRIPT='python $MOZ_OBJDIR/_profile/pgo/profileserver.py'" >> mozconfig &&
    make -f client.mk build &&
    make -f client.mk profiledbuild
  else
    make -f client.mk build
  fi &&

  cd ${MOZ_OBJDIR} &&
  prepare_install  &&
  make install      || exit 1
  # Using "exit 1" above, because the "for" loop below will break the error-handling chain

  # Put some important headers in place
  mkdir -p /usr/include/firefox-$VERSION/nss &&
  cp -Lf dist/private/nss/*.h dist/public/nss/*.h /usr/include/firefox-$VERSION/nss &&

  # Install the plugins in the right directories
  mkdir -p /opt/lunar/plugins &&
  for plugin in `ls $MOZILLA_HOME/plugins`; do
       `install -m755 $MOZILLA_HOME/plugins/$plugin /opt/lunar/plugins`; done &&

  rm -rf $MOZILLA_HOME/plugins &&
  ln -snf /opt/lunar/plugins $MOZILLA_HOME/plugins &&

  # Now the .desktop file and the icon
  mkdir -p /usr/share/applications /usr/share/pixmaps &&
  install -m644 $SCRIPT_DIRECTORY/firefox.desktop /usr/share/applications &&
  # please, dont just let the lin fail because /usr/share/pixmaps/firefox48.png is an existing symlink...
  rm -f /usr/share/pixmaps/firefox48.png &&
  install -m644 $MOZILLA_HOME/chrome/icons/default/default48.png /usr/share/pixmaps/firefox48.png || exit 1

  # Make firefox use its own icon
  for icon in `ls $MOZILLA_HOME/icons`; do
    ln -sf $MOZILLA_HOME/icons/$icon \
           $MOZILLA_HOME/chrome/icons/default/$icon
  done

) > $C_FIFO 2>&1
