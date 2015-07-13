prepare_install &&

ant jar &&

echo '#!/bin/sh
java" -jar /usr/share/java/closure-compiler/closure-compiler.jar $@' > closure

install -m755 -D closure /usr/bin/closure &&
install -m755 -D build/compiler.jar /usr/share/java/closure-compiler/closure-compiler.jar
