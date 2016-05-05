./hm.sh conf -g1 &&
./hm.sh build	&&

prepare_install &&

cd ${SOURCE_DIRECTORY} &&
install -m 755 bin/synergyc ${INSTALL_ROOT}/usr/bin &&
install -m 755 bin/synergys ${INSTALL_ROOT}/usr/bin &&

install -m 644 doc/synergy.conf.example ${INSTALL_ROOT}/etc &&

install -m 644 doc/synergys.man /usr/share/man/man1/synergys.1 &&
install -m 644 doc/synergyc.man /usr/share/man/man1/synergyc.1
