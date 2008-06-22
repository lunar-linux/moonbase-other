(

  sedit 's/PREFIX=\/usr\/local/PREFIX=\/usr/' Makefile &&
  sedit "s:SHARED=no:SHARED=yes:" Makefile &&
  
  default_make &&

  mkdir -p /usr/include/pci/ &&
  install lib/{pci,header,types,config}.h /usr/include/pci/ &&
  bunzip2 $SOURCE_CACHE/$SOURCE2 -c > pci.ids &&
  install -m644 pci.ids /usr/share &&

  # the next line makes sure you will get a fresh pci id's db
  # everytime you lin pciutils:
  rm -f $SOURCE_CACHE/$SOURCE2

) > $C_FIFO 2>&1
