(

  sedit 's:${DOCBOOKTOMAN}:docbook2man:g' doctools/docbook.mk
  default_config && 
  make &&
  make check &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
