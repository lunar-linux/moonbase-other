(

  sedit "s/acpixtract/acpixtract\ madt/" Makefile &&
  sedit "s/^madt/all/" madt/Makefile &&
  make &&
  prepare_install &&
  for DEST in acpi{dump,xtract} madt; do
  install -m755 $DEST/$DEST /usr/bin/$DEST; done

) > $C_FIFO 2>&1
