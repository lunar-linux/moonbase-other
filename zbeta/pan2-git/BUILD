(
  ./autogen.sh  --build=$BUILD            \
                --prefix=/usr             \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --infodir=/usr/share/info \
                --mandir=/usr/share/man   \
                $OPTS                     &&
  default_build

) > $C_FIFO 2>&1
