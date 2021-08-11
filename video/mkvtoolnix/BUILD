./autogen.sh &&
sed -e 's/pandoc/diSaBlEd/' -i ac/pandoc.m4 &&
autoreconf &&

rm -r lib/{libebml,libmatroska} &&

if in_depends $MODULE qt5; then
  . /etc/profile.d/qt5.rc &&
  OPTS+=" --with-qmake=/usr/bin/qmake-qt5"
fi &&

OPTS+=" --with-boost=/usr  \
        --with-boost-libdir=/usr/lib \
        --with-boost=yes \
        --disable-optimization \
        --disable-update-check \
        --with-po4a-translate=false \
        --disable-precompiled-headers" &&

default_config &&
#rake V=1 tests:unit &&
#rake V=1 tests:run_unit &&
rake V=1 &&

prepare_install &&
rake install
