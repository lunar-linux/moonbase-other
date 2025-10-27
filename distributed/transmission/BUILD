if module_installed gtk+-3; then
  OPTS+=" -DDUSE_GTK_VERSION=3"
fi &&

if in_depends qt6-tools; then
  source /etc/init.d/qt6.rc
fi &&

OPTS+=" -DWITH_CRYPTO=openssl \
        -DENABLE_CLI=ON \
        -DENABLE_TESTS=OFF \
        -DINSTALL_LIB=ON \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DUSE_SYSTEM_EVENT2=ON \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \

        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS -DCMAKE_POLICY_VERSION_MINIMUM=3.5 &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
