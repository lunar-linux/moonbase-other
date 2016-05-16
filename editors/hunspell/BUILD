OPTS+=" --disable-static --enable-threads=posix" &&

default_build &&

# add generic hunspell.so for development and projects not using pkgconfig flags
pushd /usr/lib &&
ln -s libhunspell-?.?.so libhunspell.so &&
popd
