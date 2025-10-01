if in_depends $MODULE qt5; then
  source /etc/profile.d/qt5.rc
fi

OPTS+=" -DwxUSE_UNICODE_UTF8=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DwxUSE_REGEX=sys      \
        -DwxUSE_PRIVATE_FONTS=ON \
        -DwxBUILD_OPTIMISE=ON  \
        -DwxUSE_WEBVIEW_WEBKIT=ON \
        -DwxUSE_WEBVIEW=ON  \
        -DwxUSE_NANOSVG=sys \
        -DwxBUILD_TOOLKIT=gtk3 \
        -DwxUSE_GTKPRINT=ON \
        -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
        -Wno-dev"

cmake . -B $MODULE-$VERSION -G Ninja  $OPTS &&
cmake  --build $MODULE-$VERSION &&

prepare_install &&
cmake --install $MODULE-$VERSION
