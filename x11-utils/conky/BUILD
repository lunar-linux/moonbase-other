OPTS+=" -D CMAKE_BUILD_TYPE=Release \
        -D BUILD_RSS=ON \
        -D BUILD_XDBE=ON \
        -D BUILD_PORT_MONITORS=ON \
        -D CMAKE_INSTALL_PREFIX=/usr" &&

if module_installed systemd; then
    OPTS+=" -D BUILD_JOURNAL=ON"
fi &&

default_cmake_build &&

cd $SOURCE_DIRECTORY &&

install -Dm644 extras/vim/syntax/conkyrc.vim /usr/share/vim/vimfiles/syntax/conkyrc.vim &&
install -Dm644 extras/vim/ftdetect/conkyrc.vim /usr/share/vim/vimfiles/ftdetect/conkyrc.vim
