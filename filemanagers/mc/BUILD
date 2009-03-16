(
  if [ "$USE_UTF8" == "y" ]; then
    patch_it $SOURCE2 1
  fi

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

  #Fix bzip2 warning
  sedit "s/--repetitive-best/-9/" lib/mc.menu  &&

  default_make

) > $C_FIFO 2>&1
