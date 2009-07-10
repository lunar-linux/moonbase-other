(

  #2.26.3 won't compile because they hardcoded an invalid include path
  sedit 's:../../src/::g' src/fr-enum-types.c

  ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
               --build=$BUILD                     \
               --sysconfdir=/etc                  \
               --localstatedir=/var               \
               --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
               --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
               $OPTS                             &&
  default_make

) > $C_FIFO 2>&1
