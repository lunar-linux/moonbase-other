(

  ./configure  --prefix=/usr                    \
               --bindir=/usr/bin                \
               --sbindir=/sbin                  \
               --datadir=/usr/share             \
               --sysconfdir=/etc                \
               --mandir=/usr/share/man          \
               --enable-mandatory-headers       \
               --with-init-dir=/etc/init.d      \
               --with-rc-dir=/etc               \
               --enable-mandatory-headers       \
               --with-xinetd-dir=/etc/xinetd.d  &&

  default_make

) > $C_FIFO 2>&1
