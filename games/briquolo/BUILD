(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure  --prefix=$MODULE_PREFIX               \
               --bindir=$MODULE_PREFIX/games         \
               --datadir=$MODULE_PREFIX/share/games  \
               --build=$BUILD                        \
               --sysconfdir=/etc                     \
               --localstatedir=/var                  \
               --infodir=$MODULE_PREFIX/share/info   \
               --mandir=$MODULE_PREFIX/share/man     \
               --with-x                              \
               $OPTS                                &&

  default_make

) > $C_FIFO 2>&1
