make wld &&
make wterm &&

prepare_install &&

make BIN_PREFIX=/usr/ SHARE_PREFIX=/usr/ install &&

mkdir -p /usr/share/terminfo/w/
cp wterm.info /usr/share/terminfo/w/
