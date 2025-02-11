OPTS+=" -DCMAKE_BUILD_TYPE=Release -Wno-dev -DCMAKE_INSTALL_PREFIX=/usr"
OPTS+=" -DBUILD_STATIC_LIBS=OFF -DCMAKE_INSTALL_LIBDIR=lib"

cmake -B $MODULE-$VERSION -G Ninja $OPTS &&
cmake --build $MODULE-$VERSION &&
prepare_install &&
cmake --install $MODULE-$VERSION &&

if module_installed bash-completion; then
    install -Dm644 completions/bash/qpdf /usr/share/bash-completion/completions/
fi &&

if module_installed zsh; then
    install -Dm644 completions/zsh/_qpdf /usr/share/zsh/site-functions/
fi
