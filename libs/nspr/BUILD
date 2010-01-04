(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  if [ "`arch`" == "x86_64" ]; then
    OPTS="$OPTS --enable-64bit"
  fi &&

  OPTS="$OPTS --libdir=/usr/lib/nspr --enable-system-sqlite --with-mozilla --with-pthreads"
  mkdir build inst &&
  sedit 's/\$(MKSHLIB) \$(OBJS)/\$(MKSHLIB) \$(LDFLAGS) \$(OBJS)/g' mozilla/nsprpub/config/rules.mk &&

  cd build &&
  ../mozilla/nsprpub/configure --build=$BUILD            \
                               --prefix=/usr             \
                               --sysconfdir=/etc         \
                               --localstatedir=/var      \
                               --infodir=/usr/share/info \
                               --mandir=/usr/share/man   \
                               $OPTS &&
  default_make &&

  install -m 755 $SOURCE_DIRECTORY/build/config/nspr-config /usr/bin/ &&
  cp -a $SOURCE_DIRECTORY/build/config/nspr.pc /usr/lib/pkgconfig/ &&
  rm /usr/bin/prerr.properties

) > $C_FIFO 2>&1
