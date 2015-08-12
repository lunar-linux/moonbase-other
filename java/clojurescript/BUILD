DEST_DIR=/usr/share/java/$MODULE &&

#script/bootstrap &&
sedit "s:CLOJURESCRIPT_VERSION:0.0-SNAPSHOT:" pom.template.xml &&
cp pom.template.xml pom.xml &&
mvn package -Dmaven.repo.local=m2 &&

cp -r $SOURCE_DIRECTORY/{src,script} $DEST_DIR/ &&

prepare_install &&
mkdir -p $DEST_DIR/{bin,script} &&

# Install libraries
install -Dm644 target/clojurescript-0.0-SNAPSHOT-aot.jar $DEST_DIR/lib/clojurescript.jar &&
#install -Dm644 target/clojurescript-0.0-SNAPSHOT.jar $DEST_DIR/lib/clojurescript.jar &&

# Install executables
install -Dm755 bin/cljsc.clj $DEST_DIR/bin/ &&
install -Dm755 bin/cljsc /usr/bin/cljsc
