(

  # Make sure DTD 4.3 is registered
  /usr/bin/buildDocBookCatalog --prefix=/etc/xml --version=4.3 &&

  patch_it $SOURCE2 1 &&
  default_build

) > $C_FIFO 2>&1
