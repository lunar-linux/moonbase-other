(
   ./configure  --build=$BUILD                                  \
                --sysconfdir=/etc                               \
                --prefix=/usr					\
                --localstatedir=/var                            \
                --infodir=/usr/share/info			\
                --mandir=/usr/share/man				\
                $OPTS                                           &&

   default_make

) > $C_FIFO 2>&1
