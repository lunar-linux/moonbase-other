  # this breaks a symbol check in the build scripts
  LDFLAGS=$(echo $LDFLAGS | sed "s/-s//") &&

  setterm -bfreq -blength &&

  #Finally, the build!
  make -f client.mk build ${MAKES:+-j${MAKES}}  &&

  cd ${MOZ_OBJDIR}  &&
  prepare_install   &&
  make install      &&

  # Now the .desktop file and icons
  install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/thunderbird.desktop  &&

  for s in 16 22 24 32 48 256 ; do
    install -Dm 644 dist/thunderbird/chrome/icons/default/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/thunderbird.png
  done
