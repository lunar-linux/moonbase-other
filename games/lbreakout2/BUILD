(
  ./configure --prefix=/usr                                \
              --datadir=/usr/share/games                   \
              --localstatedir=/usr/share/games/lbreakout2  \
              --with-doc-path=/usr/share/doc/lbreakout2    \
              $OPTS                  &&
  default_make                       &&
  mv /usr/bin/lbreakout2 /usr/games  &&
  mv $SOURCE_CACHE/$SOURCE2  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE3  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE4  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE5  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE6  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE7  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE8  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE9  /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE10 /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE11 /usr/share/games/lbreakout2/levels  &&
  mv $SOURCE_CACHE/$SOURCE12 /usr/share/games/lbreakout2/levels  

) > $C_FIFO 2>&1
