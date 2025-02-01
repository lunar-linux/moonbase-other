CC=musl-gcc ./configure --enable-static &&

make -j ${MAKES:-1} &&

prepare_install &&
cp src/dash /usr/bin/dash_static
