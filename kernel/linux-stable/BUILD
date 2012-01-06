# Needed for x86_64
MYARCH="`arch | grep -qw i.86 && echo i386 || arch`"

echo | make oldconfig
LD_PRELOAD= cp .config $CONFIG_CACHE/.config.current
rm -f arch/${MYARCH}/boot/bzImage

make ${MAKES:+-j$MAKES} bzImage
make ${MAKES:+-j$MAKES} modules
backup_mods_krnl $VERSION
prepare_install
make modules_install
cp arch/${MYARCH}/boot/bzImage /boot/$VERSION-`arch`
cp System.map /boot/System.map-$VERSION-`arch`
