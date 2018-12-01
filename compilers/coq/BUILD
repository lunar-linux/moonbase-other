./configure -prefix /usr -arch $(arch) -configdir /etc/xdg/coq $OPTS &&

OCAMLPATH=$(camlp5 -where) make world &&
prepare_install &&
make install
