(

  sedit 's/PREFIX=\/usr\/local/PREFIX=\/usr/' Makefile &&
  default_make                                &&
  mkdir -p     /usr/include/pci/              &&
  cp lib/pci.h /usr/include/pci/pci.h         &&
  cp lib/header.h /usr/include/pci/header.h   &&
  cp lib/config.h /usr/include/pci/config.h   &&
  cp lib/libpci.a /usr/lib/libpci.a           &&
  bunzip2 $SOURCE_CACHE/$SOURCE2 -c > pci.ids &&
  install -m644 pci.ids /usr/share

) > $C_FIFO 2>&1
