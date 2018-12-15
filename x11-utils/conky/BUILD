OPTS+=" -D BUILD_RSS=ON \
        -D BUILD_I18N=ON \
        -D BUILD_XDBE=ON \
        -D BUILD_XSHAPE=ON \
        -D BUILD_IOSTATS=ON \
        -D BUILD_OLD_CONFIG=ON \
        -D BUILD_BUILTIN_CONFIG=ON \
        -D CMAKE_INSTALL_PREFIX=/usr"

#OPTS+=" -D DEFAULTNETDEV=wlp3s0"
#OPTS+=" -D BUILD_PORT_MONITORS=OFF"

if module_installed systemd; then
  OPTS+=" -D BUILD_JOURNAL=ON"
fi

default_cmake_build &&

cd $SOURCE_DIRECTORY &&

install -Dm755 extras/convert.lua /usr/bin/conky-convert.lua &&
install -Dm644 extras/vim/syntax/conkyrc.vim /usr/share/vim/vimfiles/syntax/conkyrc.vim &&
install -Dm644 extras/vim/ftdetect/conkyrc.vim /usr/share/vim/vimfiles/ftdetect/conkyrc.vim &&
install -Dm644 extras/gedit/conky.lang /usr/share/gtksourceview-3.0/language-specs/conky.lang
