./hm.sh conf -g1 &&
./hm.sh build	&&

prepare_install &&

cd ${SOURCE_DIRECTORY} &&
install -m 755 bin/synergyc ${INSTALL_ROOT}/usr/bin &&
install -m 755 bin/synergys ${INSTALL_ROOT}/usr/bin &&

install -m 644 doc/synergy.conf.example ${INSTALL_ROOT}/etc
