(

  patch_it $SOURCE_CACHE/$SOURCE1 1  &&
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  patch_it $SOURCE_CACHE/$SOURCE3 1  &&

  ./configure      --build=$BUILD               \
                   --prefix=/usr                \
                   --bindir=/usr/bin            \
		   --sbindir=/usr/sbin          \
		   --sysconfdir=/etc            \
		   --localstatedir=/var         \
		   --infodir=/usr/share/info    \
		   --mandir=/usr/share/man      \
                   --enable-largefile           \
                   --without-gnome              \
                   --without-debug              \
                   --with-terminfo              \
                   --disable-glibtest           \
		   --with-ext2undel            &&
                   
  #Fix bzip2 warning
  sedit "s/--repetitive-best/-9/" lib/mc.menu  &&
  
  default_make

) > $C_FIFO 2>&1
