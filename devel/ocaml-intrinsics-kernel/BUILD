_args="--prefix /usr --libdir /usr/lib/ocaml --docdir /usr/share/doc \
             --mandir /usr/share/man --release --verbose"

dune build --release --verbose &&

prepare_install &&
dune install $_args
