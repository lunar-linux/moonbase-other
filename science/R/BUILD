CFLAGS+=" -ffat-lto-objects"
CXXFLAGS+=" -ffat-lto-objects"

OPTS+=" --prefix=/usr \
        --with-pcre2 \
        --enable-R-shlib \
        --sysconfdir=/etc/R \
        rsharedir=/usr/share/R/ \
        rincludedir=/usr/include/R/ \
        rdocdir=/usr/share/doc/R/ \
        F77=gfortran \
        LIBnn=lib"

default_build &&

# This is needed so cantor-15.04.1 will build
cd src/nmath/standalone &&
make shared &&
prepare_install &&
make install
