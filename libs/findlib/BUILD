sed -i -e "/dbm/d" \
       -e "/graphics/d" \
       -e "/ocamlbuild/d" \
       -e "/check_library num/d" configure &&

./configure -bindir /usr/bin \
            -mandir /usr/share/man \
            -config /etc/findlib.conf \
            -sitelib /usr/lib/ocaml \
            -with-toolbox &&

make all opt &&

prepare_install  &&
make install
install -Dm755 src/findlib/ocamlfind_opt /usr/bin/ocamlfind_opt
