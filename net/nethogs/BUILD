unset CFLAGS
export CXXFLAGS+=" -fPIC"

make prefix="/usr" &&
make prefix="/usr" libnethogs &&

prepare_install &&

make prefix="/usr" install &&
make prefix="/usr" install_lib &&

install -Dm644 src/libnethogs.h /usr/include/ &&
ln -sf "libnethogs.so.$VERSION" /usr/lib/libnethogs.so
