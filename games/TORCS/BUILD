(
  USRD=/usr/share/games/torcs

  unpack $SOURCE1
  unpack $SOURCE2
  unpack $SOURCE3
  unpack $SOURCE4
  unpack $SOURCE5
  unpack $SOURCE6
  unpack $SOURCE7
  unpack $SOURCE8

  ./configure  --prefix=/usr       \
               --bindir=/usr/games &&

  rm     -rf  /usr/games/torcs     &&
  default_make                     &&
  mkdir  -p   $USRD                &&
  cp     -rv  cars categories      \
              data menu tracks $USRD

) > $C_FIFO 2>&1
