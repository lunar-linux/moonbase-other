(
  if module_installed docbook-utils; then
    sedit 's:${DOCBOOKTOMAN}:docbook2man:g' doctools/docbook.mk
  else
    sedit 's:docbook-to-man:echo:' doctools/docbook.mk
  fi &&
  default_config && 
  make &&
  make check &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
