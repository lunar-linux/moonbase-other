(
  prepare_install &&
  cp -r $SOURCE_DIRECTORY /usr/lib &&
  chmod 0755 /usr/lib/j2sdk$VERSION &&
  for FILE in `/bin/ls /usr/lib/$MODULE$VERSION/bin`; do
    if [ -f "/usr/lib/$MODULE$VERSION/bin/$FILE" -a ! -e "/usr/bin/$FILE" ]; then
      ln -sf "/usr/lib/$MODULE$VERSION/bin/$FILE" "/usr/bin/$FILE"
    fi
  done

  # Prune old.libraries
  rm -rf /usr/lib/$MODULE$VERSION/old.libraries &&

  # Do I smell mozilla or firefox?

  mkdir -p /opt/lunar/plugins &&
  ln -sf /usr/lib/$MODULE$VERSION/jre/plugin/i386/mozilla/libjavaplugin_oji.so \
        /opt/lunar/plugins/libjavaplugin_oji.so

) > $C_FIFO 2>&1
