./configure -bindir /usr/bin \
            -mandir /usr/share/man \
            -no-custom \
            -config /etc/findlib.conf \
            -sitelib /usr/lib/ocaml &&

make all opt &&

prepare_install  &&
make install
install -Dm755 src/findlib/ocamlfind_opt /usr/bin/ocamlfind_opt
