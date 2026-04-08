sed 's|scikit-build-core[^"]*|scikit-build-core|' -i pyproject.toml
git -C openexr cherry-pick -n 30345db72944b38926f13b5114b9a01b4b553890

OPTS+=" -DCMAKE_BUILD_TYPE=Release  \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DOPENEXR_BUILD_PYTHON=ON \
        -Wno-dev"

cmake -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
