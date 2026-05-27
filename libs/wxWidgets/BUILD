OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_LIBDIR=lib \
        -DwxUSE_OPENGL=ON \
        -DwxUSE_GTKPRINT=ON \
        -DwxUSE_REGEX=sys \
        -DwxUSE_ZLIB=sys \
        -DwxUSE_EXPAT=sys \
        -DwxUSE_LIBJPEG=sys \
        -DwxUSE_LIBPNG=sys \
        -DwxUSE_LIBTIFF=sys \
        -DwxUSE_LIBLZMA=sys \
        -DwxUSE_NANOSVG=sys \
        -DwxUSE_LIBMSPACK=ON \
        -DwxUSE_PRIVATE_FONTS=ON \
        -DwxBUILD_TOOLKIT=gtk3 \
        -Wno-dev"

cmake -B $MODULE-gtk3 -S . -G Ninja $OPTS &&
cmake --build $MODULE-gtk3 &&

prepare_install
cmake --install $MODULE-gtk3 &&

if in_depends $MODULE webkit2gtk-4.1; then
cp include/wx/webview.h /usr/include/wx-3.2/wx/
fi
