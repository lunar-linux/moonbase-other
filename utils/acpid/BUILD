(

  make &&
  prepare_install &&
  make install &&
  mkdir -p /usr/share/doc/acpid &&
  install samples/acpi_handler.sh samples/sample.conf /usr/share/doc/acpid

) > $C_FIFO 2>&1
