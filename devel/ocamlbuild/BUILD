sed -i -e "/package_exists/s:camlp4.macro:xxxxxx:" \
       -e "/package_exists/s:menhirLib:xxxxxx:" \
       testsuite/external.ml &&

OPTS+=" PREFIX=/usr \
        MANDIR=/usr/share/man \
        LIBDIR=$(ocamlc -where) \
        OCAML_NATIVE=true \
        NATDYNLINK=true \
        OCAML_NATIVE_TOOLS=true"

make configure $OPTS&&
make &&

prepare_install &&
make install
