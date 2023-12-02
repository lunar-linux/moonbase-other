ocaml pkg/pkg.ml build --pkg-name ${MODULE#*-} &&

nativelibs=$(echo _build/src/astring*.cm{x,xa,xs,ti} _build/src/astring*.a ) &&

prepare_install &&
ocamlfind install astring _build/pkg/META _build/src/astring.mli _build/src/astring.cm{a,i} ${nativelibs}
