export KERNEL_VERSION=$(installed_version linux)
export KERNEL_DIR=/usr/src/linux-$KERNEL_VERSION
export MODULE_DIR=/lib/modules/$KERNEL_VERSION/extramodules

CFLAGS+=" -Werror"

prepare_install &&

make -C "${KERNEL_DIR}" &&

find . -name '*.ko' -exec strip --strip-debug {} + &&
gzip wl.ko &&

install -Dm644 $SCRIPT_DIRECTORY/broadcom-wl.conf /usr/lib/modprobe.d/
install -Dm644 wl.ko.gz "${MODULE_DIR}"/
