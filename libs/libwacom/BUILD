OPTS+=" --disable-static"

default_build &&

cd tools
install -m755 -d /usr/lib/udev/rules.d &&
./generate-hwdb > /usr/lib/udev/hwdb.d/65-libwacom.hwdb
