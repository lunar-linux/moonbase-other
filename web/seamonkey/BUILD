(

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

  for flag in $OPTS; do
    echo "ac_add_options $flag" >> mozconfig
  done &&

  if [ "$SAFE" == "y" ] ; then
    echo "ac_add_options --enable-safe-browsing" >> mozconfig
  fi  &&

  setterm -bfreq -blength &&

  if [ -n "${MAKES}" ]; then
    echo "mk_add_options MOZ_MAKE_FLAGS='-j${MAKES}'" >> mozconfig
  fi &&

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
