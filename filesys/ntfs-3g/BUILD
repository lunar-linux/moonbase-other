
  OPTS+=" --enable-extras --disable-ldconfig --disable-static --sbin=/usr/sbin --enable-ntfsprogs" &&

  sed 's|$(DESTDIR)/sbin|$(DESTDIR)/usr/bin|' -i {ntfsprogs,src}/Makefile.in &&
  sed -e 's:sbin\($\|/\):$(sbindir)\1:g' -i ntfsprogs/Makefile.in src/Makefile.in &&
  sedit "1049,1060d" libntfs-3g/Makefile.in &&

  default_build
