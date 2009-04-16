(

  sedit 's:AC_SUBST(WARNINGFLAGS)::g' configure.ac  &
  autoreconf  &&

  ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
               --build=$BUILD                     \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
               --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
               --with-dpms-ext  --disable-policykit  \
               --enable-xevents  --enable-applets    \
               $OPTS                              &&
  default_make

) > $C_FIFO 2>&1
