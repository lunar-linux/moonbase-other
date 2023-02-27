OPTS+=" -DCMAKE_BUILD_TYPE=Releas -Wno-dev -DCMAKE_INSTALL_PREFIX=/usr"

cmake -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&
cmake --install $MODULE-$VERSION &&

install -Dm644 completions/bash/qpdf /usr/share/bash-completion/completions/
