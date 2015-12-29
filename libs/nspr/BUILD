if [ "`arch`" == "x86_64" ]; then
  OPTS+=" --enable-64bit"
fi &&

OPTS+=" --libdir=/usr/lib --with-mozilla --with-pthreads --enable-strip" &&

mkdir build inst &&
#  sedit 's/\$(MKSHLIB) \$(OBJS)/\$(MKSHLIB) \$(LDFLAGS) \$(OBJS)/g' mozilla/nsprpub/config/rules.mk &&

OPTS+=" --build=$BUILD                 \
        --prefix=/usr                  \
        --sysconfdir=/etc              \
        --localstatedir=/var           \
        --includedir=/usr/include/nspr \
        --libdir=/usr/lib              \
        --infodir=/usr/share/info      \
        --mandir=/usr/share/man        \
        --enable-optimize              \
        --with-pthreads" &&

cd build &&
../nspr/configure $OPTS &&
default_make &&

ln -sf nspr.pc /usr/lib/pkgconfig/mozilla-nspr.pc &&
install -m 755 $SOURCE_DIRECTORY/build/config/nspr-config /usr/bin/ &&

rm -r /usr/bin/prerr.properties /usr/include/nspr/md
