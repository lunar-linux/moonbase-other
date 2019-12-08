KERNEL_VERSION=$(module_version linux) &&
echo "kernel version -> "$KERNEL_VERSION

CFLAGS+=" -Werror"

prepare_install &&

make -C /usr/src/linux M=`pwd` &&

gzip wl.ko &&

install -Dm644 $SCRIPT_DIRECTORY/broadcom-wl.conf /usr/lib/modprobe.d/
install -Dm644 wl.ko.gz /lib/modules/$KERNEL_VERSION/extra/broadcom/wl.ko.gz
