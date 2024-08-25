#-DwxBUILD_COMPATIBILITY=2.8 is required for erlang
OPTS+=" DwxUSE_UNICODE=ON \
       -DCMAKE_BUILD_TYPE=Release \
       -DCMAKE_INSTALL_PREFIX=/usr \
       -DwxUSE_REGEX=sys      \
       -DwxUSE_PRIVATE_FONTS=ON \
       -DwxUSE_GTKPRINT=ON      \
       -DwxBUILD_OPTIMISE=ON  \
       -DwxUSE_WEBVIEW_WEBKIT=ON \
       -DwxUSE_WEBVIEW=ON  \
       -DwxBUILD_COMPATIBILITY=2.8 \
       -Wno-dev"

#NOTE: Keep the qt toolkit first here. Else wx-config will report qt related libraries instead of
#gtk libraries and will not be compatible with wxMaxima causing its to fail.
if in_depends $MODULE qt5; then
cmake . -B ${MODULE}-qt5 -G Ninja  -DwxBUILD_TOOLKIT=qt $OPTS &&
cmake  --build ${MODULE}-qt5 &&
prepare_install &&
cmake --install ${MODULE}-qt5
fi &&

# Do the modules name; gtk
cmake . -B $MODULE-gtk -G Ninja -DwxBUILD_TOOLKIT=gtk3 $OPTS &&
cmake  --build $MODULE-gtk &&
prepare_install &&
cmake --install $MODULE-gtk
