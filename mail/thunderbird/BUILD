  # this breaks a symbol check in the build scripts
  LDFLAGS=$(echo $LDFLAGS | sed "s/-s//") &&

  setterm -bfreq -blength &&

  ./mach configure &&
  ./mach build &&
  ./mach buildsymbols &&

  cd ${MOZ_OBJDIR}  &&
  prepare_install   &&
  ../mach install    &&

  # Now the .desktop file and icons
  install -Dm 644 {"$SCRIPT_DIRECTORY",/usr/share/applications}/thunderbird.desktop  &&

  for s in 16 22 24 32 48 256 ; do
    install -Dm 644 dist/thunderbird/chrome/icons/default/default${s}.png /usr/share/icons/hicolor/${s}x${s}/apps/thunderbird.png
  done
