(

  ./configure --build=$BUILD                       \
              --prefix=$MODULE_PREFIX              \
              --sysconfdir=/etc                    \
              --localstatedir=/etc                 \
              --infodir=$MODULE_PREFIX/share/info  \
              --mandir=$MODULE_PREFIX/share/man    \
              --enable-shared                      \
              --enable-mp3rtp                      \
              $OPTS                               &&

  default_make
              
) > $C_FIFO 2>&1
