go mod vendor &&
version=r$pkgver ./gen/build.sh -mod=vendor -trimpath &&
go clean -modcache &&

prepare_install &&

mkdir -p /usr/share/doc/$MODULE &&
install -Dm755 lf /usr/bin/ &&
install -Dm644 lf.1 /usr/share/man/man1/ &&
install -Dm644 README.md etc/lfrc.example /usr/share/doc/$MODULE/ &&

# vim
mkdir -p /usr/share/vim/vimfiles/{syntax,ftdetect} &&
install -Dm644 etc/lf.vim /usr/share/vim/vimfiles/syntax/ &&
install -Dm644 etc/lf.vim /usr/share/vim/vimfiles/ftdetect/
