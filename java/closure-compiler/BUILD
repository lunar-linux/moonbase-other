DEST_DIR=/usr/share/java/closure &&

mvn package -Dmaven.test.skip=true -Dmaven.repo.local=m2 &&

echo '#!/bin/sh
java -jar /usr/share/java/closure/closure.jar $@' > closure

prepare_install &&

install -m755 -D closure /usr/bin/closure &&
install -Dm644 target/closure-compiler-1.0-SNAPSHOT.jar $DEST_DIR/closure.jar
