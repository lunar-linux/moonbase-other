(
  if module_installed docbook-utils; then
    sedit 's:${DOCBOOKTOMAN}:docbook2man:g' doctools/docbook.mk
  else
    sedit 's:docbook-to-man:echo:' doctools/docbook.mk
  fi &&
  OPTS="$OPTS --disable-curl" &&
  default_config &&
  make &&
  make check &&
  prepare_install &&
  rm -f /usr/sbin/discover-modprobe &&
  make install &&
  mv /usr/sbin/discover-modprobe /sbin/ &&
  ln -s /sbin/discover-modprobe /usr/sbin/discover-modprobe &&
  ln -s ../init.d/discover /etc/rcS.d/S20discover

) > $C_FIFO 2>&1
