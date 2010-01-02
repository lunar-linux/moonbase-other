(

  automake --add-missing

  ./configure      --build=$BUILD             \
                   --prefix=/usr              \
                   --bindir=/usr/bin          \
                   --sbindir=/usr/sbin        \
                   --sysconfdir=/etc          \
                   --localstatedir=/var       \
                   --infodir=/usr/share/info  \
                   --mandir=/usr/share/man    \
                   --enable-largefile         \
                   --without-gnome            \
                   --without-debug            \
                   --with-terminfo            \
                   --disable-glibtest         \
                   --with-ext2undel          &&

  default_make

) > $C_FIFO 2>&1
