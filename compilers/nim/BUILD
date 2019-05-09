export PATH=$SOURCE_DIRECTORY/bin:$PATH

# building nim
pushd csources &&
sh build.sh
popd &&

# building koch
nim c -d:release koch &&
./koch boot -d:release -d:nativeStacktrace -d:useGnuReadline &&

# building libs
pushd lib &&
nim c --app:lib -d:createNimRtl -d:release nimrtl.nim
popd &&

# build nimble
./koch nimble &&

# build tools
./koch tools &&

prepare_install &&

install -m 755 lib/libnimrtl.so /usr/lib/ &&
rm lib/libnimrtl.so &&

install -d /usr/lib/nim &&
cp -a lib/* /usr/lib/nim &&

cp -a compiler /usr/lib/nim &&
install -Dm 644 compiler.nimble /usr/lib/nim/compiler &&

install -Dm 644 config/nim*.cfg -t /etc &&
install -Dm 755 bin/* -t /usr/bin &&

# fix the unusual placement of header files
install -d /usr/include &&
cp -a lib/*.h /usr/include &&
rm -f /usr/lib/nim/*.h &&

install -d /usr/share/nim &&
cp -a doc examples web /usr/share/nim &&

# fix a bug related to the doc2 command
rm -f /usr/lib/nim/doc &&
ln -sf /usr/share/nim/doc /usr/lib/nim/doc
