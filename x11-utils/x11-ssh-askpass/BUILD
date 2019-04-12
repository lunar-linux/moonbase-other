./configure --mandir=/usr/share/man --prefix=/usr \
            --with-app-defaults-dir=/usr/share/X11/app-defaults &&

xmkmf &&

sedit 's|/usr/local|/usr|' Makefile &&

make includes &&
default_make &&
make install.man
