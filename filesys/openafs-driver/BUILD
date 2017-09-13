OPTS+=" --with-linux-kernel-headers=/usr/src/linux" &&

case `arch` in
  x86_64)
    sysname="amd64_linux26"
    ;;
  i386|i486|i586|i686|athlon)
    sysname="i386_linux26"
    ;;
  *)
    sysname="`arch`_linux26"
    ;;
esac &&

#./regen.sh -q &&
./configure   --prefix=/usr                   \
              --sysconfdir=/etc               \
              --localstatedir=/var/lib        \
              --infodir=/usr/share/info       \
              --mandir=/usr/share/man         \
              $OPTS                           &&
make only_libafs &&
prepare_install &&

MODDIR=$(expr $SOURCE_DIRECTORY/src/libafs/MODLOAD-*) &&
KVER=$(echo ${MODDIR##*/} | awk -F- '{ print $2 }') &&

install -D -m 644 $MODDIR/libafs.ko /lib/modules/${KVER}/kernel/fs/openafs/libafs.ko
