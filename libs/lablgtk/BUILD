export OCAMLPATH="$(ocamlfind printconf destdir)"

LABLGTK_EXTRA_FLAGS=-fcommon dune build -p lablgtk3,lablgtk3-sourceview3,lablgtk3-gtkspell3 &&

prepare_install &&
dune install -p lablgtk3,lablgtk3-sourceview3,lablgtk3-gtkspell3
