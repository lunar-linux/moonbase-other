./configure --mandir=/usr/share/man --prefix=/usr \
            --with-app-defaults-dir=/usr/share/X11/app-defaults \
            --libexecdir=/usr/lib/ssh \
            $OPTS

xmkmf &&
make includes &&
default_make &&
make install.man
