#-DwxBUILD_COMPATIBILITY=2.8 is required for erlang
#NOTE: Keep the qt toolkit first here. Else wx-config will report qt related libraries instead of
#gtk libraries and will not be compatible with wxMaxima causing it to fail its build.
if in_depends $MODULE qt5; then
OPTS+=" -DwxBUILD_TOOLKIT=qt \
        -DwxUSE_UNICODE=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DwxUSE_REGEX=sys      \
        -DwxUSE_PRIVATE_FONTS=ON \
        -DwxUSE_GTKPRINT=ON      \
        -DwxBUILD_OPTIMISE=ON  \
        -DwxUSE_WEBVIEW_WEBKIT=ON \
        -DwxUSE_WEBVIEW=ON  \
        -DwxUSE_UNICODE=ON
        -DwxBUILD_COMPATIBILITY=2.8"

cmake . -B ${MODULE}-qt5 -G Ninja $OPTS &&
cmake  --build ${MODULE}-qt5 &&

prepare_install &&
cmake --install ${MODULE}-qt5
fi &&

#-DwxBUILD_COMPATIBILITY=2.8 is required for erlang
OPTS+=" -DwxBUILD_TOOLKIT=gtk3 \
        -DwxUSE_UNICODE=ON \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DwxUSE_REGEX=sys      \
        -DwxUSE_PRIVATE_FONTS=ON \
        -DwxUSE_GTKPRINT=ON      \
        -DwxBUILD_OPTIMISE=ON  \
        -DwxUSE_WEBVIEW_WEBKIT=ON \
        -DwxUSE_WEBVIEW=ON  \
        -DwxBUILD_COMPATIBILITY=2.8"

cmake . -B $MODULE-gtk -G Ninja $OPTS &&
cmake  --build $MODULE-gtk &&
prepare_install &&
cmake --install $MODULE-gtk
