(
  prepare_install &&
  cp -r $SOURCE_DIRECTORY /usr/lib &&
  for FILE in `/bin/ls /usr/lib/$MODULE_BASE$VERSION/bin`; do
    if [ -f "/usr/lib/$MODULE_BASE$VERSION/bin/$FILE" -a ! -e "/usr/bin/$FILE" ]; then
      ln -s "/usr/lib/$MODULE_BASE$VERSION/bin/$FILE" "/usr/bin/$FILE"
    fi
  done
) > $C_FIFO 2>&1
