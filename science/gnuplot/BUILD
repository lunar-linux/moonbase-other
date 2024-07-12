source /etc/profile.d/qt6.rc

MAKEINFO=/usr/bin/makeinfo \
     ./configure --prefix=/usr \
                 --libexecdir=/usr/bin \
                 --with-bitmap-terminals \
                 --with-gihdir=/usr/share/gnuplot \
                 --with-bitmap-terminals \
                 --with-texdir=/usr/share/texmf/tex/latex/gnuplot &&

#make &&
make pkglibexecdir=/usr/bin &&

prepare_install
make pkglibexecdir=/usr/bin DESTDIR=/ install
#make install
