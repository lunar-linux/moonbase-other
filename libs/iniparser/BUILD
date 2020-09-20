make &&
prepare_install &&
install -Dm644 src/dictionary.h /usr/include/dictionary.h &&
install -Dm644 src/iniparser.h /usr/include/iniparser.h &&
install -Dm644 libiniparser.so.1 /usr/lib/libiniparser.so.1 &&
ln -sf libiniparser.so.1 /usr/lib/libiniparser.so &&
chrpath -d /usr/lib/libiniparser.so.1
