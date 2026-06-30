LDFLAGS+=" -licuuc"

default_cmake_build &&

cd /usr/share/games/openttd/baseset/ &&

unpack $SOURCE2 &&
unpack $SOURCE3 &&
unpack $SOURCE4 &&

tar xf ${SOURCE2//-all.zip/.tar} &&
tar xf ${SOURCE3//-all.zip/.tar} &&
tar xf ${SOURCE4//-all.zip/.tar} &&

rm open*.tar
