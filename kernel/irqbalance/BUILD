
./autogen.sh &&

OPTS+=" --sbindir=/usr/bin"&&

default_build &&

mkdir -p /etc/$MODULE &&
install -vDm 644 misc/irqbalance.env /etc/$MODULE/ &&
install -vDm 644 misc/90-irqbalance.rules /usr/lib/udev/rules.d
