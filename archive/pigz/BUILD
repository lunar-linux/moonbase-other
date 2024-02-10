make &&

prepare_install &&

install -Dm755 $MODULE /usr/bin/ &&
ln -sf pigz /usr/bin/unpigz &&

mkdir -p /usr/share/doc/$MODULE/ &&
install -Dm644 $MODULE.1 /usr/share/man/man1/ &&
install -Dm644 $MODULE.pdf /usr/share/doc/$MODULE/
