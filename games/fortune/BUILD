(

  LOCATIONS="   FORTDIR=/usr/games
              COOKIEDIR=/usr/share/games/fortunes
                 BINDIR=/usr/bin
              BINMANDIR=/usr/share/man/man1
             FORTMANDIR=/usr/share/man/man6"

  make  $LOCATIONS  &&
  prepare_install   &&
  make  $LOCATIONS  \
        install

) > $C_FIFO 2>&1
