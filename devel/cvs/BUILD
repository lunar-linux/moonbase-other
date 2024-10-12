sedit '52i #include <stdio.h>' src/cvs.h &&
autoreconf -fiv &&

sedit 's:bin/cat:usr/bin/cat:' configure &&

./configure  --build=$BUILD            \
             --prefix=/usr             \
             --sysconfdir=/etc         \
             --localstatedir=/var      \
             --infodir=/usr/share/info \
             --mandir=/usr/share/man   \
             --with-gssapi=no          \
             --with-external-zlib      \
             $OPTS                    &&

default_make
