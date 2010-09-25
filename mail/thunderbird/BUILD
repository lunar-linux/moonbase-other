(

  COMM_VER=comm-1.9.2

  if module_is_expired $MODULE && [ "$VERSION" != "`installed_version $MODULE`" ]; then
        set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  export MOZILLA_HOME=/usr/lib/$MODULE-$VERSION
  export MOZ_CO_PROJECT=mail
  export MOZILLA_OFFICIAL=1
  export BUILD_OFFICIAL=1
  export MOZ_THUNDERBIRD=1
  # I have no idea how Mozilla compiles binaries if source code is not compilable without these fixes:
  sedit '160s/^protected/public/' $COMM_VER/mozilla/layout/generic/nsFrame.h &&
  export MOZILLA_SRCDIR=$SOURCE_DIRECTORY/$COMM_VER/mozilla
  export BUILD_TOOLS=$MOZILLA_SRCDIR/build/unix
  export MOZILLA_DIR=$MOZILLA_SRCDIR

  . /etc/profile.d/pkgconfig.rc &&
  cp $SCRIPT_DIRECTORY/mozconfig $COMM_VER &&

  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla"
  mkdir -p ${MOZ_OBJDIR}  &&

  cd $COMM_VER &&

  #Add DEPENDS options

  if in_depends $MODULE dbus ; then
    echo "ac_add_options --enable-dbus" >> mozconfig
  else
    echo "ac_add_options --disable-dbus" >> mozconfig
  fi  &&

  if in_depends $MODULE sqlite ; then
    echo "ac_add_options --enable-system-sqlite" >> mozconfig
  fi  &&

  if in_depends $MODULE "xulrunner" ; then
    XUL=`module_version xulrunner`
    echo "ac_add_options --with-libxul-sdk=/usr/lib/xulrunner-devel-$XUL" >> mozconfig
  fi  &&

  if in_depends $MODULE gnome-vfs ; then
    echo "ac_add_options --enable-gnomevfs" >> mozconfig
  else
    echo "ac_add_options --disable-gnomevfs" >> mozconfig
  fi  &&

  if in_depends $MODULE openldap ; then
    echo "ac_add_options --enable-ldap" >> mozconfig
  else
    echo "ac_add_options --disable-ldap" >> mozconfig
  fi  &&

  setterm -bfreq -blength &&

  #Finally, the build!
  if [ "$PGO" == "y" ] ; then
    #CCache breaks the pgo build
    export CCACHE_DISABLE=1
    echo "ac_add_options --enable-profile-guided-optimization" >> mozconfig
    echo "mk_add_options PROFILE_GEN_SCRIPT='python $MOZ_OBJDIR/_profile/pgo/profileserver.py'" >> mozconfig
    make -f client.mk build
    make -f client.mk profiledbuild
  else
    make -f client.mk build
  fi  &&

  cd ${MOZ_OBJDIR}  &&
  prepare_install   &&
  make install      &&

  # Make thunderbird use its own icon
  mkdir -p $MOZILLA_HOME/chrome/icons/default  &&

  for icon in `ls $MOZILLA_HOME/icons`; do
   `ln -sf $MOZILLA_HOME/icons/$icon \
           $MOZILLA_HOME/chrome/icons/default/$icon`
  done

  # Now the .desktop file and the icon
  mkdir -p /usr/share/applications /usr/share/pixmaps &&
  install -m644 $SCRIPT_DIRECTORY/thunderbird.desktop /usr/share/applications &&
  # please, dont just let the lin fail because /usr/share/pixmaps/thunderbird.xpm is an existing symlink...
  rm -f /usr/share/pixmaps/thunderbird.xpm &&
  cp $SOURCE_DIRECTORY/$COMM_VER/other-licenses/branding/thunderbird/content/icon64.png $SOURCE_DIRECTORY/$COMM_VER/other-licenses/branding/thunderbird/mailicon64.png &&
  cp -f $SOURCE_DIRECTORY/$COMM_VER/other-licenses/branding/thunderbird/content/icon48.png $SOURCE_DIRECTORY/$COMM_VER/other-licenses/branding/thunderbird/mailicon48.png &&
  install -m644 $SOURCE_DIRECTORY/$COMM_VER/other-licenses/branding/thunderbird/mailicon*.png /usr/share/pixmaps

) > $C_FIFO 2>&1

