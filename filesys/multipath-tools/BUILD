sedit 's;^prefix.*:=;prefix := /usr;' Makefile.inc &&
sedit 's/lib64/lib/g' Makefile.inc &&

make prefix='/usr' \
     bindir='/usr/bin' \
     LIB='lib' \
     FORTIFY_OPT='' &&

prepare_install &&
make install
