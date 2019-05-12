# Do not install firmware on modules_install
sedit '/Makefile.*__fw_modinst/d' Makefile

# Needed for x86_64
MYARCH="`arch | grep -qw i.86 && echo i386 || arch`"

PATCH_VERSION=$(echo $VERSION | cut -d . -f 3)
FULL_VERSION=$(echo $VERSION | cut -d . -f 1,2).${PATCH_VERSION:-0}

echo | make oldconfig
LD_PRELOAD= cp .config $CONFIG_CACHE/.config-lts
rm -f arch/${MYARCH}/boot/bzImage

make ${MAKES:+-j$MAKES} bzImage
make ${MAKES:+-j$MAKES} INSTALL_MOD_PATH=/usr modules
backup_mods_krnl $FULL_VERSION
prepare_install
make INSTALL_MOD_PATH=/usr modules_install

cp arch/${MYARCH}/boot/bzImage /boot/vmlinuz-$FULL_VERSION-$(arch)
cp System.map /boot/System.map-$FULL_VERSION-$(arch)
gzip -c -9 .config > /boot/config-$FULL_VERSION-$(arch).gz
