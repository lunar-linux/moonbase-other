CPPFLAGS="`pkg-config --cflags nss`"
PYTHON=python

OPTS+=" --enable-python \
        --with-external-db \
        --with-lua \
        --with-cap \
        --program-prefix=rpmtools-"

default_build &&

ln -sf /usr/bin/rpmtools-rpm /usr/bin/rpmverify &&
ln -sf /usr/bin/rpmtools-rpm /usr/bin/rpmquery
