(

  patch_it $SOURCE_CACHE/$SOURCE2 1                      &&
  patch_it $SOURCE_CACHE/$SOURCE3 1                      &&
  patch_it $SOURCE_CACHE/$SOURCE4 1                      &&
  sedit "s/\/man\/man1/\/share\0/" manedit/Makefile.install.UNIX
  
  ./configure Linux -v --disable=arch-i686 \
                  --mandir=/usr/share/man  \
                  --CFLAGS="$CFLAGS"       \
                  $OPTS                    &&
  make                                     &&
  prepare_install                          &&
  make    install

) > $C_FIFO 2>&1
