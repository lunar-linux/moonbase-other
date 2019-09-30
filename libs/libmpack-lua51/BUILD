gcc -O2 -fPIC -DMPACK_USE_SYSTEM -I/usr/include/lua5.1 -c lmpack.c -o lmpack.o &&
gcc -shared -lmpack -o mpack.so lmpack.o &&

prepare_install &&

install -Dm755 mpack.so /usr/lib/lua/5.1/
