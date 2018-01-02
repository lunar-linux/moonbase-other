# for systems with /bin -> /usr/bin symlink
if [ "`cd /usr/bin; pwd -P`" != "`cd /bin; pwd -P`" ]; then
  ln -sf /usr/bin/echo /bin/echo
fi &&

if [ ${STATIC:-n} == y ]; then
  LDFLAGS+=" --static"
fi &&

make defconfig &&
make &&
prepare_install &&

cp busybox /bin  &&
gather_docs TODO &&
cp docs/busybox.1 /usr/share/man/man1/busybox.1
