(
  prepare_install &&
  cp -r $SOURCE_DIRECTORY /usr/lib &&
  for FILE in `/bin/ls /usr/lib/$MODULE$VERSION/bin`; do
    if [ -f "/usr/lib/$MODULE$VERSION/bin/$FILE" -a ! -e "/usr/bin/$FILE" ]; then
      ln -s "/usr/lib/$MODULE$VERSION/bin/$FILE" "/usr/bin/$FILE"
    fi
  done

  if module_installed mozilla &&
     [ -d "/usr/lib/mozilla/plugins" -a ! -e "/usr/lib/mozilla/plugins/javaplugin_oji.so" ]; then
    ln -s /usr/lib/$MODULE$VERSION/jre/plugin/i386/mozilla/javaplugin_oji.so /usr/lib/mozilla/plugins/
  fi
) > $C_FIFO 2>&1
