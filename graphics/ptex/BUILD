cat <<-EOF > version
	${VERSION}
	EOF

OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DPTEX_BUILD_STATIC_LIBS=OFF \
        -DPTEX_BUILD_DOCS=OFF \
        -Wno-dev"

cmake -B $MODULE-$VERSION -S . -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install
cmake --install $MODULE-$VERSION
