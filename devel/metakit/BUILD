(
 #protect from ccache
 unset CC CXX                                    &&
 cd builds
 ../unix/configure  --prefix=/usr                 \
                    --sysconfdir=/etc             \
                    --localstatedir=/var          \
                    --mandir=/usr/share/man       \
                   $OPTS                         &&

 make              &&
 prepare_install   &&
 make install

) > $C_FIFO 2>&1

