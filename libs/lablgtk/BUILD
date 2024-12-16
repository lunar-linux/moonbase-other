export OCAMLPATH="$(ocamlfind printconf destdir)"

LABLGTK_EXTRA_FLAGS=-fcommon dune build -p lablgtk3&&

prepare_install &&
dune install --prefix="/usr" --libdir="$(ocamlfind printconf destdir)"
