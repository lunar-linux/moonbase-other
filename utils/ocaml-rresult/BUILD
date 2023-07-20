dune init project rresult &&
cd rresult &&
dune build -p rresult &&

prepare_install &&

dune install --prefix /usr --docdir /usr/share/doc --libdir ${pkgdir}$(ocamlfind printconf destdir)
