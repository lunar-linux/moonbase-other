OPTS+=" -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_MESSAGE_LOG_LEVEL=STATUS \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION

mkdir -p /etc/openal &&

if [ ! -e /etc/openal/alsoft.conf ]; then
  install -m 644 $SOURCE_DIRECTORY/alsoftrc.sample /etc/openal/alsoft.conf
fi
