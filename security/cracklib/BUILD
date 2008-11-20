(

  ./configure --prefix=/                 \
              --datadir=/lib             \
              --includedir=/usr/include  \
              --infodir=/usr/share/doc   \
              --mandir=/usr/share/man    \
              --disable-static           \
              --with-default-dict=/lib/cracklib/pw_dict \
              $OPTS                                    &&

  sedit 's:${exec_prefix}/lib/python:/usr/lib/python:' python/Makefile  &&
  sedit 's:${prefix}/lib/python:/usr/lib/python:'      python/Makefile  &&

  default_make  &&
  make dict

) > $C_FIFO 2>&1
