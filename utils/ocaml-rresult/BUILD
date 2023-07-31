#dune init project &&
#cd rresult &&
pkg/pkg.ml build --pkg-name rresult &&
#dune build -p rresult &&

prepare_install &&
opam-installer --prefix=/usr --libdir=$(ocamlc -where) --docdir=/usr/share/doc
