cd src &&

if [ "$(arch)" = "x86_64" ]; then
   export CFLAGS+=" -fPIC"
fi &&

OPTS+=" --sysconfdir=/etc --disable-static --enable-shared"

default_build &&

install -D -m644 ../share/pkgs/drracket/drracket/drracket.desktop /usr/share/applications/drracket.desktop &&
install -d /usr/share/icons/hicolor/{16x16,32x32,48x48,256x256}/apps &&
ln -s /usr/share/racket/pkgs/icons/plt-16x16.png /usr/share/icons/hicolor/16x16/apps/drracket.png &&
ln -s /usr/share/racket/pkgs/icons/plt-32x32.png /usr/share/icons/hicolor/32x32/apps/drracket.png &&
ln -s /usr/share/racket/pkgs/icons/plt-48x48.png /usr/share/icons/hicolor/48x48/apps/drracket.png &&
ln -s /usr/share/racket/pkgs/icons/plt-logo-red-diffuse.png /usr/share/icons/hicolor/256x256/apps/drracket.png
