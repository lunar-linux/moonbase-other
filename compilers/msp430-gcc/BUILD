export PATH=/usr/libexec/mspgcc/bin:$PATH
unset CFLAGS

mkdir -p $SOURCE_DIRECTORY/BUILD &&
cd $SOURCE_DIRECTORY/BUILD &&
MAKEINFO=no ../configure \
    --prefix=/usr \
    --infodir=/usr/share/info \
    --mandir=/usr/share/man \
    --disable-nls \
    --enable-languages=c \
    --enable-version-specific-runtime-libs \
    --target=msp430 \
    --with-gnu-as \
    --with-gnu-ld \
    --with-as=/usr/bin/msp430-as \
    --with-ld=/usr/bin/msp430-ld \
    $OPTS &&

make &&
mkdir -p $SOURCE_DIRECTORY/_DESTDIR &&
make DESTDIR=$SOURCE_DIRECTORY/_DESTDIR install &&

# Remove some stuff we don't need
rm -rf $SOURCE_DIRECTORY/_DESTDIR/usr/{lib64,share/man/man7} &&

prepare_install &&
cp -rf --remove-destination $SOURCE_DIRECTORY/_DESTDIR/usr /
