(

  if [ "`arch`" == "x86_64" ]; then
    OPTS+=" --enable-64bit"
  fi  &&

  OPTS+=" --libdir=/usr/lib --with-mozilla --with-pthreads --enable-strip"  &&
  mkdir build inst  &&
#  sedit 's/\$(MKSHLIB) \$(OBJS)/\$(MKSHLIB) \$(LDFLAGS) \$(OBJS)/g' mozilla/nsprpub/config/rules.mk  &&

  cd build  &&
  ../nspr/configure --build=$BUILD                 \
                    --prefix=/usr                  \
                    --sysconfdir=/etc              \
                    --localstatedir=/var           \
                    --includedir=/usr/include/nspr \
                    --libdir=/usr/lib              \
                    --infodir=/usr/share/info      \
                    --mandir=/usr/share/man        \
                    --enable-optimize              \
                    $OPTS                         &&
  default_make  &&

  install -m 755 $SOURCE_DIRECTORY/build/config/nspr-config /usr/bin/
  rm /usr/bin/prerr.properties

) > $C_FIFO 2>&1
