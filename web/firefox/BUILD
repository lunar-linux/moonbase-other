(

  # Workaround Segmentation fault at install part on precompile_cache.js
  sedit '/^GENERATE_CACHE = 1$/d' browser/installer/Makefile.in &&

  sedit 's/@PRE_RELEASE_SUFFIX@//g' browser/base/content/browser.xul &&

  export MOZ_CO_PROJECT=browser  &&
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

  # turn off this #$ bell during build
  setterm -bfreq -blength &&

  if [ -n "${MAKES}" ]; then
    echo "mk_add_options MOZ_MAKE_FLAGS='-j${MAKES}'" >> mozconfig
  fi &&

  #Finally, the build!
  if [ "$PGO" == "y" ] ; then
    #CCache breaks the pgo build
    export CCACHE_DISABLE=1  &&
    echo "mk_add_options PROFILE_GEN_SCRIPT='python $MOZ_OBJDIR/_profile/pgo/profileserver.py'" >> mozconfig  &&

    make -f client.mk profiledbuild
  else
    make -f client.mk build
  fi  &&

  cd ${MOZ_OBJDIR}  &&
  prepare_install   &&
  make install      &&

  # Now the .desktop file and icons
  install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/firefox.desktop  &&

  for s in 16 22 24 32 48 256 ; do
    install -Dm 644 $SOURCE_DIRECTORY/browser/branding/official/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/firefox.png
  done &&

  # symlink plugins folder
  ln -sfn /usr/lib/lunar/plugins "/usr/lib/firefox-$VERSION/plugins"

) > $C_FIFO 2>&1
