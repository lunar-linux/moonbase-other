(

  prepare_install &&

  mkdir -p /usr/share/skype/{avatars,lang,sounds} &&

  # Executable
  install -m 755 skype /usr/bin/ &&

  # Data
  install -m 644 avatars/* /usr/share/skype/avatars/ &&
  install -m 644 lang/* /usr/share/skype/lang/ &&
  install -m 644 sounds/* /usr/share/skype/sounds/ &&

  # Dbus
  install -Dm 644 skype.conf /etc/dbus-1/system.d/skype.conf &&

  # Icons
  install -Dm 644 icons/SkypeBlue_16x16.png /usr/share/icons/hicolor/16x16/apps/skype.png &&
  install -Dm 644 icons/SkypeBlue_32x32.png /usr/share/icons/hicolor/32x32/apps/skype.png &&
  install -Dm 644 icons/SkypeBlue_48x48.png /usr/share/icons/hicolor/48x48/apps/skype.png &&

  install -Dm 644 skype.desktop /usr/share/applications/skype.desktop &&

  if [ -x /usr/bin/gtk-update-icon-cache ] ; then
    gtk-update-icon-cache -f /usr/share/icons/hicolor/
  fi &&

  gather_docs LICENSE

) > $C_FIFO 2>&1
