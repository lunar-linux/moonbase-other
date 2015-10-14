DEST_DIR=/usr/share/java/$MODULE &&

script/bootstrap &&

prepare_install &&

mkdir -p $DEST_DIR/{bin,lib,script} &&

cp -r ./{src,script} $DEST_DIR &&

# Insta1l libraries
install -Dm644 ./lib/* $DESTDIR/lib/ &&

# Install executables
install -Dm755 ./bin/* $DESTDIR/bin/