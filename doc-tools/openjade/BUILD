(
  CATALOGDIR="/usr/share/sgml/openjade-1.3"
  DOCDIR="/usr/share/doc/openjade"
  PTEXTD="$CATALOGDIR/pubtext"
  

  ./configure --build=$BUILD                                 \
              --prefix=/usr                                  \
              --bindir=/usr/bin                              \
              --sbindir=/usr/sbin                            \
              --datadir=/usr/share                           \
              --infodir=/usr/share/info                      \
              --mandir=/usr/share/man                        \
              --localstatedir=/var                           \
              --libdir=/usr/lib                              \
              --includedir=/usr/include                      \
              --enable-http                                  \
              --disable-shared                               \
              --enable-mif                                   \
              --enable-default-catalog=/etc/sgml/catalog     \
              --enable-default-search-path=/usr/share/sgml   &&

  make all LDFLAGS=-all-static                               &&
  prepare_install                                            &&
  if ! [ -d "$CATALOGDIR" ]; then 
       mkdir -p $CATALOGDIR
  fi                                                         &&
  if ! [ -d "$DOCDIR" ]; then
       mkdir -p $DOCDIR
  fi                                                         &&
  cp -r pubtext   $CATALOGDIR                                &&
  ln -sf $PTEXTD/html.soc $PTEXTD/catalog                    &&
  cp -r dsssl     $CATALOGDIR                                &&
  cp -r testsuite $CATALOGDIR                                &&
  cp -r contrib   $CATALOGDIR                                &&
  cp -r unicode   $CATALOGDIR                                &&
  cp -r develdoc  $DOCDIR                                    &&
  cp -r jadedoc   $DOCDIR                                    &&
  make    install                                            &&
  ln -sf `which openjade` /usr/bin/jade

) > $C_FIFO 2>&1
