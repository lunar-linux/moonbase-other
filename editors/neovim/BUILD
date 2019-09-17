OPTS+=" -Hneovim-$VERSION"

default_cmake_build &&

cd $SOURCE_DIRECTORY &&
# Make vim modules work
mkdir -p /usr/share/nvim &&
echo "set runtimepath+=/usr/share/vim/vimfiles" > /usr/share/nvim/sysinit.vim &&
install -Dm644 runtime/nvim.desktop /usr/share/applications/ &&
install -Dm644 runtime/nvim.png /usr/share/pixmaps/
