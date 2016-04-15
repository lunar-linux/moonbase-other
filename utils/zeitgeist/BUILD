sedit "271,278d" configure.ac &&

autoreconf -fi &&

OPTS+=" --enable-fts \
        --enable-datahub \
        --enable-explain-queries \
        --disable-telepathy" &&

OPTS+=" --libexecdir=/usr/lib/$MODULE" &&

default_build
