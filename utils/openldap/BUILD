(
export CPPFLAGS="$CPPFLAGS -I /usr/include/db4"

  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-modules          \
               --enable-wrappers         \
               --enable-crypt            \
               --with-gnu-ld             \
               --enable-shared           \
               $OPTS                    &&
  make depend                           &&
  default_make
  
) > $C_FIFO 2>&1
