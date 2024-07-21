OPTS+=" --disable-static \
        --disable-error-on-warning \
        --docdir=/usr/share/doc/guile-$VERSION"

default_config

make      &&
make html &&
makeinfo --plaintext -o doc/r5rs/r5rs.txt doc/r5rs/r5rs.texi &&
makeinfo --plaintext -o doc/ref/guile.txt doc/ref/guile.texi

prepare_install
make install      &&
make install-html &&

mkdir -p /usr/share/gdb/auto-load/usr/lib &&
mv /usr/lib/libguile-*-gdb.scm /usr/share/gdb/auto-load/usr/lib &&
mv /usr/share/doc/guile-$VERSION/{guile.html,ref} &&
mv /usr/share/doc/guile-$VERSION/r5rs{.html,} &&

find examples -name "Makefile*" -delete &&
cp -vR examples   /usr/share/doc/guile-$VERSION &&

for DIRNAME in r5rs ref; do
  install -v -m644  doc/${DIRNAME}/*.txt /usr/share/doc/guile-$VERSION/${DIRNAME}
done &&

unset DIRNAME
