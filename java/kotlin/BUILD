setconf bin/kotlin      DIR /usr/bin
setconf bin/kotlinc-js  DIR /usr/bin
setconf bin/kotlinc-jvm DIR /usr/bin
setconf bin/kotlinc     KOTLIN_HOME "/usr/share/java/$MODULE"

prepare_install &&

# Executables
install -Dm755 bin/kotlin      /usr/bin/kotlin &&
install -Dm755 bin/kotlin      /usr/bin/kotlinc &&
install -Dm755 bin/kotlinc-js  /usr/bin/kotlinc-js &&
install -Dm755 bin/kotlinc-jvm /usr/bin/kotlinc-jvm &&

# jar files
install -d /usr/share/java/$MODULE/lib
for jar in lib/*.jar; do
   install -Dm644 "$jar" /usr/share/java/$MODULE/lib
done &&

# build.txt must be installed for for "-version" to work
install -Dm644 build.txt /usr/share/java/$MODULE
