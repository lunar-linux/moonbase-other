OPTS+=" PREFIX=/usr" &&

make -C lib $OPTS &&
make -C programs $OPTS lz4 lz4c &&

prepare_install &&

make install $OPTS &&

# remove the static library
rm -f /usr/lib/liblz4.a
