TARGETS="coq-core,coq-stdlib,coq"

_opts=" -prefix /usr \
        -configdir /etc/xdg/coq \
        -mandir /usr/share/man \
        -docdir /usr/share/doc \
        -datadir /usr/share/coq \
        -libdir /usr/lib/coq  \
        -warn-error no"
        
./configure $_opts &&

make DUNEOPT="--display=short --profile release" VERBOSE=1 dunestrap &&
dune build -p $TARGETS &&

prepare_install &&
dune install --prefix=/usr coq-core coq-stdlib coq --docdir=/usr/share/doc
