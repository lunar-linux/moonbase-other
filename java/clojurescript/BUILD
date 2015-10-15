DEST_DIR=/usr/share/java/$MODULE &&

script/bootstrap &&

prepare_install &&

mkdir -p $DEST_DIR/{bin,lib,script} &&

cp -r ./{src,script} $DEST_DIR/ &&

# Insta1l libraries
install -m 644 lib/* $DEST_DIR/lib/ &&

# Install executables
install -m 755 bin/* $DEST_DIR/bin/
