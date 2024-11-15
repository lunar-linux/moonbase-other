make user &&
prepare_install &&

make  PREFIX=/usr           \
      SBINDIR=/usr/sbin     \
      MANDIR=/usr/share/man \
      PROG_EXTRA=sensord    \
      user_install &&

install -D -m644 $SCRIPT_DIRECTORY/sensord.conf /etc/conf.d/sensord
