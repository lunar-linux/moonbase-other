CATALOGDIR="/usr/share/sgml/$MODULE-$VERSION" &&
PTEXTD="$CATALOGDIR/pubtext" &&

OPTS+=" --enable-http \
        --disable-static \
        --enable-default-catalog=/etc/sgml/catalog \
        --enable-default-search-path=/usr/share/sgml" &&

default_build &&

if ! [ -d "$CATALOGDIR" ]; then
  mkdir -p $CATALOGDIR
fi &&

cp -r pubtext   $CATALOGDIR &&
cp -r dsssl/*   $CATALOGDIR &&
cp -r testsuite $CATALOGDIR &&
cp -r contrib   $CATALOGDIR &&
cp -r unicode   $CATALOGDIR &&
cp -r develdoc  $CATALOGDIR &&
ln -sf $PTEXTD/html.soc $PTEXTD/catalog &&
ln -sf `which openjade` /usr/bin/jade
