# fix function for openjpeg
sedit "s/__OPENJPEG__VERSION__/2.3/" source/fitz/load-jpx.c &&

OPTS="prefix=/usr build=release" &&

make $OPTS CURL_LIBS='-lcurl -lpthread' &&

sedit 's/-mupdf//g' Makefile &&

prepare_install &&

make $OPTS install &&

install -Dm644 $SCRIPT_DIRECTORY/mupdf.desktop /usr/share/applications/mupdf.desktop &&
install -Dm644 $SCRIPT_DIRECTORY/mupdf.xpm /usr/share/pixmaps/mupdf.xpm
