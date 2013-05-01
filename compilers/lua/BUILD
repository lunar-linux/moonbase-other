# build shared object
patch_it $SOURCE2 0 &&
sedit "s@CFLAGS=@CFLAGS+=@" src/Makefile &&
CFLAGS+=" -fPIC" &&

sedit "s:/usr/local:/usr:" Makefile  &&


make linux      &&
prepare_install &&
make install
