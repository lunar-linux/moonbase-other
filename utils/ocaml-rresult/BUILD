ocaml pkg/pkg.ml build --pkg-name ${MODULE#*-} &&

nativelibs=$(echo _build/src/${MODULE#*-}*.cm{x,xa,xs,ti} _build/src/${MODULE#*-}*.a ) &&

prepare_install &&
ocamlfind install ${MODULE#*-} _build/pkg/META _build/src/${MODULE#*-}.mli _build/src/${MODULE#*-}.cm{a,i} ${nativelibs}
