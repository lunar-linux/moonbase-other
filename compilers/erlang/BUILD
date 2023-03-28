export CFLAGS+=' -ffat-lto-objects'

OPTS+=" --enable-smp-support --prefix=/usr --enable-pie"

./configure $OPTS &&

default_make &&

mkdir -p /etc/config.d &&
install -Dm644 $SCRIPT_DIRECTORY/epmd.conf /etc/config.d/epmd
