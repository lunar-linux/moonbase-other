(
  cat $SCRIPT_DIRECTORY/pciutils-pcimodules.patch | patch -p1 &&
  cat $SCRIPT_DIRECTORY/pciutils-bufsiz.patch     | patch -p1 &&
  cat $SCRIPT_DIRECTORY/pciutils-strip.patch      | patch -p1 &&
  default_make                              &&
  mkdir -p     /usr/include/pci/            &&
  cp lib/pci.h /usr/include/pci/pci.h       &&
  cp lib/header.h /usr/include/pci/header.h &&
  cp lib/config.h /usr/include/pci/config.h &&
  cp lib/libpci.a /usr/lib/libpci.a         

) > $C_FIFO 2>&1
