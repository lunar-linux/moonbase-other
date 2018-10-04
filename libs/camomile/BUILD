jbuilder build &&

#So build doesn't fail over incorrect locations
sedit '1264,1268d' _build/default/camomile.install &&

prepare_install &&
jbuilder install --destdir=/usr --libdir=/usr/lib/ocaml
