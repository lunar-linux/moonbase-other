export KVERSION=$(installed_version linux)
export KBUILD_DIR=/usr/src/linux-$KVERSION
export KBASE=/lib/modules/$KVERSION
export MDEST_DIR=${KBASE}/extramodules

CFLAGS+=" -Werror"

KBUILD_NOPEDANTIC=1 make -C "${KBUILD_DIR}" M=`pwd` &&

prepare_install &&

find . -name '*.ko' -exec strip --strip-debug {} + &&
find . -name '*.ko' -exec gzip {} + &&

mkdir -p "${MDEST_DIR}"
install -m 644 wl.ko.gz "${MDEST_DIR}/" &&

mkdir -p /usr/lib/modprobe.d &&
install -m 644 $SCRIPT_DIRECTORY/broadcom-wl.conf /usr/lib/modprobe.d/
