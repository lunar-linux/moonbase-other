DEST_DIR=/usr/share/java/$MODULE &&

mvn package -Dmaven.test.skip=true -Dmaven.repo.local=m2 &&

prepare_install &&

install -Dm755 clojure-tools/clojure /usr/bin/clojure &&
install -Dm755 clojure-tools/clj /usr/bin/clj &&
install -Dm644 target/$MODULE-$VERSION.jar $DEST_DIR/$MODULE.jar
