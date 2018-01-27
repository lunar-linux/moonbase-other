KERNEL_VERSION=$(module_version linux) &&
echo "kernel version -> "$KERNEL_VERSION

#KERNEL_MAJOR=${KERNEL_VERSION%.*} &&
#echo "kernel major version -> "$KERNEL_MAJOR

prepare_install &&

make -C /usr/lib/modules/$KERNEL_VERSION/build M=`pwd` &&

gzip wl.ko &&

install -Dm644 wl.ko.gz /usr/lib/modules/$KERNEL_VERSION/extra/broadcom/wl.ko.gz &&
install -Dm644 $SCRIPT_DIRECTORY/modprobe.d /usr/lib/modprobe.d/broadcom-wl.conf
