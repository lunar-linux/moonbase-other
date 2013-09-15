OPTS+=" --with-linux-kernel-headers=/usr/src/linux" &&

case `uname -r` in
  2.6.*|3.*)
    kv="26"
    ;;
  *)
    message "Unsupported kernel version!" &&
    false
    ;;
esac &&

case `arch` in
  x86_64)
    sysname="amd64_linux${kv}"
    ;;
  i386|i486|i586|i686|athlon)
    sysname="i386_linux${kv}"
    ;;
  *)
    sysname="`arch`_linux${kv}"
    ;;
esac &&

./regen.sh -q &&
./configure   --prefix=/usr                   \
              --sysconfdir=/etc               \
              --localstatedir=/var/lib        \
              --infodir=/usr/share/info       \
              --mandir=/usr/share/man         \
              --with-afs-sysname=$sysname     \
              $OPTS                           &&
make only_libafs &&
prepare_install &&

MODDIR=$(expr $SOURCE_DIRECTORY/src/libafs/MODLOAD-*) &&
KVER=$(echo ${MODDIR##*/} | awk -F- '{ print $2 }') &&

install -D -m 644 $MODDIR/libafs.ko /lib/modules/${KVER}/kernel/fs/openafs/libafs.ko
