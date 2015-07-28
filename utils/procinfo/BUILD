sedit "s/\/man\/man/\/share\/man\/man/g" Makefile &&
sedit "s/-ltermcap/-lncurses/" Makefile           &&

make &&
prepare_install &&
make  -e  PREFIX=/usr install
