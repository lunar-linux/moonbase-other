(

  patch_it $SOURCE2 1 &&
  ./configure  --prefix=${GNOME26_PREFIX:-/usr}  \
               --build=$BUILD                    \
               --sysconfdir=/etc                 \
               --localstatedir=/var              \
               --infodir=${GNOME26_PREFIX:-/usr}/share/info \
               --mandir=${GNOME26_PREFIX:-/usr}/share/man   \
               $OPTS                             &&
  
  sedit "s/\/usr\/X11R6\/include\/freetype2/\/usr\/include\/freetype2/" Makefile src/Makefile doc/Makefile doc/openi18n/Makefile doc/reference/Makefile python/Makefile termcaps/Makefile &&
  default_make                   

) > $C_FIFO 2>&1
