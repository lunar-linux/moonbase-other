(

  default_build  &&

  mkdir -p /etc/acpi/events /etc/acpi/actions  &&

#  not everybody wants the default poweroff script ;)
  if [ ! -e /etc/acpi/events/power ]; then
    install -D -m644 ${SCRIPT_DIRECTORY}/power /etc/acpi/events/power
  fi  &&

  gather_docs samples/acpi_handler.sh samples/sample.conf

) > $C_FIFO 2>&1
