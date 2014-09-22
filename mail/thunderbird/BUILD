
  patch_it $SOURCE2 1 &&

  export MOZ_CO_PROJECT=mail  &&
  export MOZILLA_HOME=/usr/lib/$MODULE-$VERSION &&
  export MOZILLA_OFFICIAL=1  &&
  export BUILD_OFFICIAL=1  &&
  export MOZ_MAKE_FILES=$MAKES  &&
  export MOZ_THUNDERBIRD=1 &&
  export MOZ_OPTIMIZE_FLAGS="$CFLAGS" &&
  export MOZ_DEBUG_FLAGS="$CFLAGS" &&

  cp $SCRIPT_DIRECTORY/mozconfig .  &&
  export MOZ_OBJDIR="${SOURCE_DIRECTORY}/build-mozilla"  &&
  mkdir -p ${MOZ_OBJDIR}  &&

  for flag in $OPTS; do
  echo "ac_add_options $flag" >> mozconfig
  done &&

  if in_depends $MODULE sun-jdk ; then
    echo "ac_add_options --with-java-bin-path=/usr/java/default/bin" >> mozconfig
  fi  &&

  setterm -bfreq -blength &&

  #Finally, the build!
  make -f client.mk build ${MAKES:+-j${MAKES}}  &&

  cd ${MOZ_OBJDIR}  &&
  prepare_install   &&
  make install      || exit 1

  # Now the .desktop file and icons
  install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/thunderbird.desktop  &&

  for s in 16 22 24 32 48 256 ; do
    install -Dm 644 mozilla/dist/thunderbird/chrome/icons/default/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/thunderbird.png
  done
