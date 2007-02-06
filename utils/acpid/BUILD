(

  sedit "s/-Werror//g" Makefile &&

  default_make &&

  mkdir -p /etc/acpi/events /etc/acpi/actions &&
  gather_docs samples/acpi_handler.sh samples/sample.conf

) > $C_FIFO 2>&1
