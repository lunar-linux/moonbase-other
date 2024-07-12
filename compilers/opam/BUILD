#default_config &&

./configure --prefix=/usr --with-vendored-deps &&

make lib-ext all -j1 \
    OCAMLC='ocamlc -unsafe-string' \
    OCAMLOPT='ocamlopt -unsafe-string' &&

#dune build &&

prepare_install &&
#dune install
make  install
