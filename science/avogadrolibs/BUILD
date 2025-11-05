source /etc/profile.d/qt6.rc  &&

#Dummy dirs to trick cmake
mkdir -p crystals fragments molecules &&

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DCMAKE_BUILD_TYPE=Release \
        -DQT_VERSION=6 \
        -DUSE_PYTHON=ON \
        -DBUILD_GPL_PLUGINS=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION &&

# Cleaning up
rm -rf /usr/src/{crystals,molecules,fragments}
