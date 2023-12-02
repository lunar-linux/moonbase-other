ocaml pkg/pkg.ml build --pkg-name topkg &&

nativelibs=$(echo _build/src/topkg*.cm{x,xa,xs,ti} _build/src/topkg.a) &&

prepare_install &&
ocamlfind install topkg _build/pkg/META _build/src/topkg.mli _build/src/topkg.cm{a,i} ${nativelibs}
