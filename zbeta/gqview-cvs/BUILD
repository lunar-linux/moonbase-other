(
  ./autogen.sh  --build=$BUILD            \
                --sysconfdir=/etc         \
                --localstatedir=/var      \
                --infodir=/usr/share/info \
                --mandir=/usr/share/man   \
                --disable-nls             \
                $OPTS
  touch INSTALL
  automake --add-missing --gnu
  default_build

) > $C_FIFO 2>&1
