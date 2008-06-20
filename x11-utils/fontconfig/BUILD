(
  # We need to clear the cache dir or otherwise the build is going to fail
  if [ -d /var/cache/fontconfig ] ; then
    rm -f /var/cache/fontconfig/*
  fi
  
  # There is a documented issue when the user does not have a
  # timezone set (/etc/localtime).  It creates invalid XML
  # syntax in a comment located in /etc/fonts/fonts.conf.
  sedit "s:\`date\`::" configure                    &&


  ./configure --prefix=/usr                          \
              --with-confdir=/etc/fonts              \
              --disable-docbook                      \
              --disable-docs                         \
              --with-cache-dir=/var/cache/fontconfig \
              $OPTS                                 &&

   default_make &&

   install -m644 $SCRIPT_DIRECTORY/10-lunar-fonts.conf \
                 /etc/fonts/conf.d/

) > $C_FIFO 2>&1
