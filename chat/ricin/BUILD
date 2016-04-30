make autogen &&
make release &&

cd build &&
mesonconf.py -Dprefix=/usr &&

prepare_install &&

make

# cover /usr/bin/Ricin
install -Dm755 Ricin /usr/bin/$MODULE
