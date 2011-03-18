(

  ./configure   --prefix=/usr       \
                --sysconfdir=/etc   \
		--disable-static    \
                $OPTS              &&

  make                             &&
  prepare_install                  &&
  make    install

) > $C_FIFO 2>&1
