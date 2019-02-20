./configure \
    --prefix=/usr \
    --disable-nls \
    --disable-werror \
    --infodir=/usr/share/info \
    --libdir=/usr/lib \
    --mandir=/usr/share/man \
    --target=msp430 &&

make configure-host &&
make tooldir=/usr all &&
mkdir -p $SOURCE_DIRECTORY/__DESTDIR/ &&
make DESTDIR=$SOURCE_DIRECTORY/__DESTDIR/ tooldir=/usr install &&

# Rename and remove files that would conflict with system binutils
rm -rf $SOURCE_DIRECTORY/__DESTDIR/usr/lib64 &&
rm -f $SOURCE_DIRECTORY/__DESTDIR/usr/share/man/man1/msp430-{dlltool,nlmconv,windres,windmc}* &&
rm -rf $SOURCE_DIRECTORY/__DESTDIR/usr/share/info &&

for file in as ar objdump objcopy ranlib strip nm; do
     rm -f $SOURCE_DIRECTORY/__DESTDIR/usr/bin/$file
done &&

prepare_install &&
cp -rf --remove-destination $SOURCE_DIRECTORY/__DESTDIR/usr /

