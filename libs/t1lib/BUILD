autoupdate -f &&

./configure --prefix=/usr --enable-static=no $OPTS &&

make without_doc          &&
prepare_install           &&
make    install           &&

chmod 755 /usr/lib/libt1.so.$VERSION &&
if [[ -f /usr/lib/libt1x.so.$VERSION ]] ; then
  chmod 755 /usr/lib/libt1x.so.$VERSION
fi
