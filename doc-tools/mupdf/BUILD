opts="prefix=/usr build=release" &&

make $opts CURL_LIBS='-lcurl -lpthread' &&

sedit 's/-mupdf//g' Makefile &&

prepare_install &&

make $opts install &&

install -Dm644 $SCRIPT_DIRECTORY/mupdf.desktop /usr/share/applications/mupdf.desktop &&
install -Dm644 $SCRIPT_DIRECTORY/mupdf.xpm /usr/share/pixmaps/mupdf.xpm




