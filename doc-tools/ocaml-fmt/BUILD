ocaml pkg/pkg.ml build --pkg-name fmt &&

nativelibs=$(echo _build/src/fmt*.cm{x,xa,xs,ti} _build/src/fmt.a _build/src/fmt_cli.a) &&

prepare_install &&
ocamlfind install fmt _build/pkg/META _build/src/fmt.mli _build/src/fmt.cm{a,i} ${nativelibs}
