(
  if [[ "$(installed_version Python)" == "2.3" ]]; then
  sedit 's/sys.path\[1/sys.path\[2/' configure.in
  gettextize --copy --force --intl
  libtoolize --force
  aclocal  -I m4
  autoconf
  automake -a -c -f --foreign
  fi                                              &&
  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --enable-ipv6             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     &&
  default_make 
) > $C_FIFO 2>&1
