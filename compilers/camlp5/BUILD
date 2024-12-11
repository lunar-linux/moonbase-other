./configure -prefix /usr \
            -libdir $(ocamlfind printconf destdir) \
            -mandir /usr/share/man/man1 \
            -strict &&

make world.opt  &&
prepare_install &&
make install
