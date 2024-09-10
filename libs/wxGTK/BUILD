OPTS+=" -DwxUSE_UNICODE=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DwxUSE_REGEX=sys      \
        -DwxUSE_PRIVATE_FONTS=ON \
        -DwxBUILD_OPTIMISE=ON  \
        -DwxUSE_WEBVIEW_WEBKIT=ON \
        -DwxUSE_WEBVIEW=ON  \
        -DwxUSE_NANOSVG=sys \
        -DwxBUILD_TOOLKIT=gtk3 \
        -DwxUSE_GTKPRINT=ON \
        -Wno-dev"

# Do the modules name; gtk
cmake . -B $MODULE-gtk -G Ninja  $OPTS &&
cmake  --build $MODULE-gtk &&
prepare_install &&
cmake --install $MODULE-gtk
