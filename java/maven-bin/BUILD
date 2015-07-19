DEST_DIR=/usr/share/java/maven

rm -f bin/*.bat &&

prepare_install &&

install -m 755 -d $DEST_DIR/ &&
cp -rp {bin,boot,conf,lib} $DEST_DIR/ &&
ln -sf $DEST_DIR/bin/mvn /usr/bin/mvn &&
ln -sf $DEST_DIR/bin/mvnDebug /usr/bin/mvnDebug &&
#ln -sf $DEST_DIR/bin/m2 /usr/bin/m2 &&

gather_docs LICENSE* NOTICE* README*
