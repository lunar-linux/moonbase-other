TARGETS="coq coqide"

_opts=" -prefix /usr \
        -configdir /etc/xdg/coq \
        -mandir /usr/share/man \
        -docdir /usr/share/doc \
        -datadir /usr/share/coq \
        -libdir /usr/lib/coq  \
        -warn-error no"
        
./configure $_opts &&

make -C doc/tools/coqrst/notations &&
make DUNEOPT="--display=short --profile release" VERBOSE=1 dunestrap &&
dune build -p $TARGETS &&

prepare_install &&
dune install --prefix=/usr $TARGETS --docdir=/usr/share/doc
