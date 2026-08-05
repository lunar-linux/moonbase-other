[[ "`arch`" == "x86_64" ]] && OPTS+=" --enable-64bit"

OPTS+=" --libdir=/usr/lib --with-mozilla --with-pthreads --enable-strip" &&

mkdir inst &&

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
../configure $OPTS &&
default_make &&

ln -sf nspr.pc /usr/lib/pkgconfig/mozilla-nspr.pc &&
install -m 755 $SOURCE_DIRECTORY/build/config/nspr-config /usr/bin/ &&

rm -r /usr/bin/prerr.properties /usr/include/nspr/md
