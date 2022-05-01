export KVER=$(installed_version linux)
export KERNEL_DIR=/usr/src/linux-$KVER
export MODULE_DIR=/lib/modules/$KVER/extramodules

make KDIR="${KERNEL_DIR}" &&
make HDAPS=1 KVER="$KERNEL_VERSION" KDIR="${KERNEL_DIR}" EXTRA_CFLAGS=

prepare_install &&

find . -name '*.ko' -exec strip --strip-debug {} + &&
find . -name '*.ko' -exec gzip {} + &&

mkdir -p "${MODULE_DIR}" &&
install -Dm644 *.ko.gz "${MODULE_DIR}"/ &&

echo ${MODULE} | install -Dm644 /dev/stdin "/usr/lib/modules-load.d/${MODULE}.conf"
