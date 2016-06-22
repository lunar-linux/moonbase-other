prepare_install &&

NCURSES_VER="$(lvu installed ncurses)" &&
NCURSES_VER=${NCURSES_VER%.*}

install -d /usr/lib
ln -s /usr/lib/libncursesw.so.$NCURSES_VER /usr/lib/libtinfo.so.$VERSION
ln -s /usr/lib/libtinfo.so.$VERSION /usr/lib/libtinfo.so
