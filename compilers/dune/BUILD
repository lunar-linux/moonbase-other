make release &&

# So build doesn't fail on installing in the wrong locations
sedit '396,400d' _build/default/dune.install &&

prepare_install &&
make install
