export PREFIX=/usr &&
export SBINDIR=/usr/bin &&
export UDEVDIR=/usr/lib/udev &&
export RULESDIR=/usr/lib/udev/rules.d &&

default_make &&

cd $MODULE-data-$VERDATA &&
make install &&

install -m644 $SOURCE_CACHE/$SOURCE3 /etc/usb_modeswitch.setup
