(
   # We have a newer version of Python than this moudle expects.
   # Luckly 2.4 only shows up WRT python in configure and changing
   # it to 2.5 works good!  Hopefully this will be not necessary
   # come next release of alacarte.
   sedit  "s:2\.4:2\.5:g"  configure  &&

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD                     \
                --sysconfdir=/etc                  \
                --localstatedir=/var               \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
                $OPTS                              &&
    default_make

) > $C_FIFO 2>&1
