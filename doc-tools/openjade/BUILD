(

  # Fixes segfault when compiling docbook-utils
  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  # We need to remove the old catalog entries upon an update
  if module_is_expired $MODULE ; then
         set_module_config OLD_VER "`installed_version $MODULE`"
  fi &&

  CATALOGDIR="/usr/share/sgml/$MODULE-$VERSION" &&
  PTEXTD="$CATALOGDIR/pubtext" &&

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
              --disable-static                               \
              --enable-default-catalog=/etc/sgml/catalog     \
              --enable-default-search-path=/usr/share/sgml   &&

  make all                                                   &&
  prepare_install                                            &&
  make install                                               &&
  if ! [ -d "$CATALOGDIR" ]; then 
       mkdir -p $CATALOGDIR
  fi                                                         &&
  cp -r pubtext   $CATALOGDIR                                &&
  ln -sf $PTEXTD/html.soc $PTEXTD/catalog                    &&
  cp -r dsssl/*   $CATALOGDIR                                &&
  cp -r testsuite $CATALOGDIR                                &&
  cp -r contrib   $CATALOGDIR                                &&
  cp -r unicode   $CATALOGDIR                                &&
  cp -r develdoc  $CATALOGDIR                                &&
  ln -sf `which openjade` /usr/bin/jade
) > $C_FIFO 2>&1
