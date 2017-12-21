bad_flags -malign-double -s

export FORCE_UNSAFE_CONFIGURE=1
export CFLAGS+=" -static"
export LDFLAGS+=" -static"

./configure  --prefix=/usr              \
             --infodir=/usr/share/info  \
             --disable-nls              &&
make &&
prepare_install &&
cp  src/tar  /usr/bin/tar-static &&
cp  rmt/rmt  /usr/bin/rmt-static
