cargo build --release --locked &&

prepare_install &&

install -Dt /usr/bin target/release/$MODULE &&

cp man/page man/broot.1 &&
sed -i "s/#version/$VERSION/g" man/broot.1 &&
sed -i "s/#date/$(date +'%Y\/%m\/%d')/g" man/broot.1 &&
install -Dm644 man/broot.1 /usr/share/man/man1/
