(

  sedit 's:AC_SUBST(WARNINGFLAGS)::g' configure.ac  &&

  ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
               --build=$BUILD        \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               --with-dpms-ext       \
               --disable-policykit   \
               --enable-applets      \
               --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
               --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
               $OPTS                                         &&
  default_make

) > $C_FIFO 2>&1
