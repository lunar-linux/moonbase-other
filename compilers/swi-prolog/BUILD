if in_depends $MODULE qt6-imageformats ; then
  . /etc/profile.d/qt6.rc
fi &&

OPTS+=" -DHAVE_LIBATOMIC=ON -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr"

cmake -B build -S . -G Ninja $OPTS -Wno-dev &&
cmake --build build &&
prepare_install &&
cmake --install build
