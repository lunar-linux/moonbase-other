#export OCAMLPATH=/usr/lib/ocaml 
#export CAML_LD_LIBRARY_PATH=/usr/lib/ocaml/zarith/ 
#export SPHINXWARNERROR=0

make clean &&

_opts=" -prefix /usr \
        -mandir /usr/share/man \
        -docdir /usr/share/doc \
        -configdir /etc/xdg/coq/ \
        -warn-error no"

./configure $_opts &&

make DUNEOPT="--display=short --profile release" VERBOSE=1 dunestrap &&
dune build -p coq-core,coq-stdlib,coq &&

prepare_install &&
dune install --prefix=/usr --docdir /usr/share/doc coq-core coq-stdlib coq
