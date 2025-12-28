source /etc/profile.d/qt6.rc

OPTS+=" --prefix=/usr --libexecdir=/usr/bin --with-bitmap-terminals"
MAKEINFO=/usr/bin/makeinfo \
 ./configure --with-gihdir=/usr/share/gnuplot \
             --with-texdir=/usr/share/texmf/tex/latex/gnuplot $OPTS &&

make pkglibexecdir=/usr/bin &&

prepare_install
make pkglibexecdir=/usr/bin DESTDIR=/ install
