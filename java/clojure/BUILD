DEST_DIR=/usr/share/java/$MODULE &&

mvn package -Dmaven.test.skip=true -Dmaven.repo.local=m2 &&

prepare_install &&

install -Dm755 "$SCRIPT_DIRECTORY/clj.sh" /usr/bin/clojure &&
install -Dm644 "target/$MODULE-$VERSION.jar" "$DEST_DIR/$MODULE.jar" &&
ln -sf /usr/bin/clojure /usr/bin/clj
