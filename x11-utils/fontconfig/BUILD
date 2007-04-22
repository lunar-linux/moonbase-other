(

  # There is a documented issue when the user does not have a
  # timezone set (/etc/localtime).  It creates invalid XML
  # syntax in a comment located in /etc/fonts/fonts.conf.
  sedit "s:\`date\`::" configure                    &&

  ./configure --prefix=/usr                          \
              --with-confdir=/etc/fonts              \
              --disable-docs                         \
              --with-cache-dir=/var/cache/fontconfig \
              $OPTS                                 &&

   default_make

) > $C_FIFO 2>&1
