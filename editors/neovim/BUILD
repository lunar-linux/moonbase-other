OPTS+=" -DCMAKE_BUILD_TYPE=Release"

default_cmake_build &&

# Make vim modules work
cd $SOURCE_DIRECTORY &&
mkdir -p /usr/share/nvim &&

echo "set runtimepath+=/usr/share/vim/vimfiles" > /usr/share/nvim/sysinit.vim &&
install -Dm644 runtime/nvim.desktop -t /usr/share/applications/ &&
install -Dm644 runtime/nvim.appdata.xml -t /usr/share/metainfo/ &&
install -Dm644 runtime/nvim.png -t /usr/share/pixmaps/
