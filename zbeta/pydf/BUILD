(
  cd $SOURCE_DIRECTORY &&
  prepare_install
  install -Dm755 pydf "/usr/bin/pydf" &&
  install -Dm644 pydfrc "/etc/pydfrc" &&
  install -Dm644 pydf.1 "/usr/share/man/man1/pydf.1"
) > $C_FIFO 2>&1
