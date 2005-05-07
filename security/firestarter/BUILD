(

  ./configure --prefix=/usr                   \
              --bindir=/usr/bin               \
	      --sbindir=/usr/sbin             \
	      --mandir=/usr/share/man         &&
  default_build

  if [ -e "/etc/init.d/firestarter.sh" ]; then
    rm -f /etc/init.d/firestarter.sh
    rm -f /etc/rc?.d/???firestarter.sh
  fi

) > $C_FIFO 2>&1
