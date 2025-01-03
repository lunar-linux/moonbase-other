prepare_install &&

# create the necessary directory structure
install -d /usr/share/java/$MODULE/bin
install -d /usr/share/java/$MODULE/lib/plugins
install -d /usr/share/java/$MODULE/init.d

# copy across jar files
install -Dm 644 lib/*.jar /usr/share/java/$MODULE/lib/
install -Dm 644 lib/plugins/*.jar /usr/share/java/$MODULE/lib/plugins/

# copy across supporting text documentation and scripts
install -m 755 bin/gradle /usr/share/java/$MODULE/bin/
install -m 644 init.d/*.* /usr/share/java/$MODULE/init.d

# link gradle script to /usr/bin
ln -s /usr/share/java/$MODULE/bin/$MODULE /usr/bin/

gather_docs samples
