ocaml pkg/pkg.ml build &&

nativelibs=$(echo _build/src/react*.cm{x,xa,xs,ti} _build/src/react.a _build/src/react_cli.a) &&

prepare_install &&
ocamlfind install react _build/pkg/META _build/src/react.mli _build/src/react.cm{a,i} ${navtivelibs}
