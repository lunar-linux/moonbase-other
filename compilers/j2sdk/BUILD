(
  prepare_install &&
  cp -r $SOURCE_DIRECTORY /usr/lib &&
  chmod 0755 /usr/lib/j2sdk$VERSION &&
  for FILE in `/bin/ls /usr/lib/$MODULE$VERSION/bin`; do
    if [ -f "/usr/lib/$MODULE$VERSION/bin/$FILE" -a ! -e "/usr/bin/$FILE" ]; then
      ln -s "/usr/lib/$MODULE$VERSION/bin/$FILE" "/usr/bin/$FILE"
    fi
  done
) > $C_FIFO 2>&1
