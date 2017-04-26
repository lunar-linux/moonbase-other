OPTS+=" --disable-static --enable-threads=posix" &&

autoreconf -vfi &&

default_build &&

# add generic hunspell.so for development and projects not using pkgconfig flags
pushd /usr/lib &&
ln -sf libhunspell-?.?.so libhunspell.so &&
popd
