./configure -bindir /usr/bin \
            -mandir /usr/share/man \
            -config /etc/findlib.conf \
            -sitelib /usr/lib/ocaml \
            $OPTS

make all &&
make opt &&

prepare_install  &&
make install
install -Dm755 src/findlib/ocamlfind_opt /usr/bin/ocamlfind_opt
