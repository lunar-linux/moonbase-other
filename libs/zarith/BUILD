./configure -installdir /usr/lib/ocaml &&

make -j ${MAKES:-1}
prepare_install &&
OCAMLFIND_LDCONF=ignore make install
