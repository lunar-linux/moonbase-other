(

  cp $MOONBASE/x11/$MODULE/xplanet-uselessincludes.patch $SOURCE_DIRECTORY &&
  patch -p1 < xplanet-uselessincludes.patch                                &&
  aclocal                                                                  &&
  autoconf                                                                 &&
  rm -f Makefile                                                           &&
  ./configure     --prefix=/usr                                            \
                  --bindir=/usr/bin                                        \
                  --sbindir=/usr/sbin                                      \
                  --datadir=/usr/share                                     \
                  --sysconfdir=/etc                                        \
                  --infodir=/usr/share/info                                \
                  --mandir=/usr/share/man                                  \
                  --with-auxdir=share/xplanet                              \
                  --with-freetype                                          \
                  --with-gif                                               \
                  --with-jpeg                                              \
                  --with-png                                               \
                  --with-pnm                                               \
                  --with-tiff                                              \
                  --with-animation                                         \
                  --with-gl                                                \
                  --with-glut                                              &&
                  
                  
  default_make

) > $C_FIFO 2>&1
