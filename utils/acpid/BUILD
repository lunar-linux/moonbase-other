default_build &&

mkdir -p /etc/acpi/events /etc/acpi/actions &&

# not everybody wants the default poweroff script ;)
if [ ! -e /etc/acpi/events/power ]; then
  install -D -m644 ${SCRIPT_DIRECTORY}/power /etc/acpi/events/power
fi &&

gather_docs samples/acpi_handler.sh samples/sample.conf &&

# systemd
if module_installed systemd; then
  install -Dm644 $SCRIPT_DIRECTORY/systemd.d/acpid.service /usr/lib/systemd/system/acpid.service
fi
