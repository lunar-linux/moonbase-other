LDFLAGS+=" -licuuc"

default_cmake_build &&

prepare_install &&

make install &&

if [ ! -d /usr/share/games/openttd/baseset ]; then
    mkdir -p /usr/share/games/openttd/baseset
fi &&
cd /usr/share/games/openttd/baseset/ &&
unpack $SOURCE2 &&
unpack $SOURCE3 &&
unpack $SOURCE4
