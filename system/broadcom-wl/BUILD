KERNEL_VERSION=$(module_version linux) &&
echo "kernel version -> "$KERNEL_VERSION

prepare_install &&

make -C /usr/lib/modules/$KERNEL_VERSION/build M=`pwd` &&

gzip wl.ko &&

install -Dm644 $SCRIPT_DIRECTORY/broadcom-wl.conf /usr/lib/modprobe.d/
install -Dm644 wl.ko.gz /usr/lib/modules/$KERNEL_VERSION/extra/broadcom/wl.ko.gz
