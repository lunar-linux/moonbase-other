export KVERSION=$(installed_version linux)
export KBUILD_DIR=/usr/src/linux-$KVERSION
export KBASE=/lib/modules/$KVERSION
export MDEST_DIR=${KBASE}/extramodules

make -C "${KBUILD_DIR}" M=`pwd`/src \
        ENABLE_USE_FIRMWARE_FILE=y \
        CONFIG_R8168_NAPI=y \
        CONFIG_R8168_VLAN=y \
        CONFIG_ASPM=y \
        ENABLE_S5WOL=y \
        ENABLE_EEE=y \
        modules

find ./src -name '*.ko' -exec strip --strip-debug {} + &&
find ./src -name '*.ko' -exec gzip {} + &&

prepare_install &&

mkdir -p ${MDEST_DIR}
install -m 644 src/*.ko.gz "${MDEST_DIR}/" &&

mkdir -p /usr/lib/modprobe.d &&
echo "blacklist r8169" | install -Dm644 /dev/stdin /usr/lib/modprobe.d/$MODULE.conf
