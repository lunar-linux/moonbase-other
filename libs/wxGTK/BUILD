OPTS+=" -DwxUSE_UNICODE_UTF8=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DwxBUILD_OPTIMISE=ON \
        -DwxUSE_NANOSVG=builtin \
        -DwxUSE_REGEX=sys      \
        -DwxUSE_PRIVATE_FONTS=ON \
        -DwxBUILD_OPTIMISE=ON  \
        -DwxUSE_WEBVIEW_WEBKIT=ON \
        -DwxUSE_WEBVIEW=ON  \
        -DwxUSE_NANOSVG=sys \
        -DwxUSE_GTKPRINT=ON \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -Wno-dev"

# Build gtk3 
cmake . -B $MODULE-$VERSION-gtk3 -G Ninja $OPTS -DwxBUILD_TOOLKIT=gtk3 &&
cmake  --build $MODULE-$VERSION-gtk3 &&

prepare_install &&
cmake --install $MODULE-$VERSION-gtk3
