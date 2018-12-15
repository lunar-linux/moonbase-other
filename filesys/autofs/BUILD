OPTS+="--sysconfdir=/etc/autofs \
       --without-hesiod \
       --enable-ignore-busy"

OPTS+=" --sbindir=/usr/bin"

default_config &&
make &&

# bad hack: something goes wrong here:
rm -f /usr/lib/autofs/mount_ext3.so &&
prepare_install &&

make -C daemon install &&
make -C lib install &&
make -C modules install &&
make -C man install &&

mkdir -p $DOCUMENT_DIRECTORY/$MODULE &&
cp -a samples $DOCUMENT_DIRECTORY/$MODULE &&

if [ ! -f /etc/auto.master ]; then
  install -m 644 samples/auto.* /etc/
fi
