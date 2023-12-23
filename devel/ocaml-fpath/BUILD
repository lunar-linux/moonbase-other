ocaml pkg/pkg.ml build --pkg-name ${MODULE#*-} &&

nativelibs=$(echo _build/src/fpath*.cm{x,xa,xs,ti} _build/src/fpath*.a ) &&

prepare_install &&
ocamlfind install fpath _build/pkg/META _build/src/fpath.mli _build/src/fpath.cm{a,i} ${nativelibs}
