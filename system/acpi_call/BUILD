export KERNEL_VERSION=$(installed_version linux)
export KERNEL_DIR=/usr/src/linux-$KERNEL_VERSION
export MODULE_DIR=/lib/modules/$KERNEL_VERSION/extramodules

make KDIR="${KERNEL_DIR}" &&

prepare_install &&

find . -name '*.ko' -exec strip --strip-debug {} + &&
find . -name '*.ko' -exec gzip {} + &&

mkdir -p "${MODULE_DIR}" &&
install -Dm644 *.ko.gz "${MODULE_DIR}"/ &&

echo ${MODULE} | install -Dm644 /dev/stdin "/usr/lib/modules-load.d/${MODULE}.conf"

mkdir -p "/usr/share/${MODULE}"
cp -t "/usr/share/${MODULE}" -dr --no-preserve=ownership examples support
