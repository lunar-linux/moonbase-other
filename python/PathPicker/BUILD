prepare_install &&

# install application
mkdir -p /usr/share/fpp &&
cp -a src /usr/share/fpp/ &&
cp -a fpp /usr/share/fpp/ &&
ln -sf /usr/share/fpp/fpp /usr/bin/ &&

# documentation
install -Dm755 -t /usr/share/man/man1/ debian/usr/share/man/man1/fpp.1 &&
install -Dm644 -t /usr/share/doc/$MODULE/ {README,CONTRIBUTING,CODE_OF_CONDUCT}.md index.html
cp -a assets /usr/share/doc/$MODULE/
