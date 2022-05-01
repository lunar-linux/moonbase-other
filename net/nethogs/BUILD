unset CFLAGS
unset CXXFLAGS
make prefix="/usr" &&
make prefix="/usr" libnethogs &&

prepare_install &&

make prefix="/usr" install &&
make prefix="/usr" install_lib &&

install -Dm755 src/libnethogs.h /usr/include/ &&
ln -sf "/usr/lib/libnethogs.so.$VERSION" /usr/lib/libnethogs.so
