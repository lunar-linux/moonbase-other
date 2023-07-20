./configure -prefix /usr \
            -bindir /usr/bin \
            -libdir $(ocamlfind printconf destdir) \
            -mandir /usr/share/man/man1 &&

make world.opt  &&
prepare_install &&
make install
