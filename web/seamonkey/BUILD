
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
