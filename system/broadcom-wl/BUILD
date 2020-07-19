export KERNEL_VERSION=$(installed_version linux)
export KERNEL_DIR=/usr/src/linux-$KERNEL_VERSION
export MODULE_DIR=/lib/modules/$KERNEL_VERSION/extramodules
echo "Linux kernel version -> "$KERNEL_VERSION

CFLAGS+=" -Werror"

make -C "${KERNEL_DIR}"  M=`pwd` &&

prepare_install &&

find . -name '*.ko' -exec strip --strip-debug {} + &&
gzip wl.ko &&

mkdir -p "${MODULE_DIR}" &&
install -Dm644 wl.ko.gz "${MODULE_DIR}"/ &&
install -Dm644 $SCRIPT_DIRECTORY/broadcom-wl.conf /usr/lib/modprobe.d/
