export KVERSION=$(installed_version linux)
export KBUILD_DIR=/usr/src/linux-$KVERSION
export KBASE=/lib/modules/$KVERSION
export MDEST_DIR=${KBASE}/extramodules

make -C "${KBUILD_DIR}" M=`pwd`/src \
      EXTRA_CFLAGS="-DCONFIG_R8168_NAPI -DCONFIG_R8168_VLAN" \
      modules

find ./src -name '*.ko' -exec strip --strip-debug {} + &&
find ./src -name '*.ko' -exec gzip {} + &&

prepare_install &&

install -m 644 src/*.ko.gz "${MDEST_DIR}/" &&

mkdir -p /usr/lib/modprobe.d &&
echo "blacklist r8169" | install -Dm644 /dev/stdin /usr/lib/modprobe.d/$MODULE.conf
