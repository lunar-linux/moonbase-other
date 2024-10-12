# a gcc-14 tweak
sedit 's:, (char:, (const char:g' prog/sensord/rrd.c &&
make user &&
prepare_install &&

# Enable sensord building
if [[ "$BSENSD" == "y" ]]; then
  make  PREFIX=/usr           \
        SBINDIR=/usr/sbin     \
        MANDIR=/usr/share/man \
        PROG_EXTRA=sensord    \
        user_install
else
  make  PREFIX=/usr           \
        SBINDIR=/usr/bin      \
        MANDIR=/usr/share/man \
        user_install
fi
