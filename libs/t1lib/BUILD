sed -i -e "s:dvips:#dvips:" doc/Makefile.in &&
sed -i -e "s:\./\(t1lib\.config\):/etc/t1lib/\1:" xglyph/xglyph.c &&

autoupdate -f &&

CFLAGS+=" -std=gnu17"

./configure --prefix=/usr --enable-static=no $OPTS &&

make without_doc          &&
prepare_install           &&
make    install           &&

chmod 755 /usr/lib/libt1.so.$VERSION &&
if [[ -f /usr/lib/libt1x.so.$VERSION ]] ; then
  chmod 755 /usr/lib/libt1x.so.$VERSION
fi
