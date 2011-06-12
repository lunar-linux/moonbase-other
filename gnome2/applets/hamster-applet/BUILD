(

  ./waf configure --prefix=${GNOME210_PREFIX:-/usr}              \
                  --sysconfdir=/etc                              \
                  --localstatedir=/var                           \
                  --infodir=${GNOME21-_PREFIX:-/usr}/share/info  \
                  --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
                  $OPTS  &&
  ./waf &&
  prepare_install &&
  ./waf install

) > $C_FIFO 2>&1
