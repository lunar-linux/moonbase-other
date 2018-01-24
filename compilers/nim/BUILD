export PATH=$SOURCE_DIRECTORY/bin:$PATH

# building nim
pushd csources &&
sh build.sh
popd &&

#sedit "s:/opt/nimble:/var/lib/nimble:g" install.sh &&

# building koch
nim c -d:release koch &&
./koch boot -d:release -d:nativeStacktrace -d:useGnuReadline &&

# building libs
pushd lib &&
nim c --app:lib -d:createNimRtl -d:release nimrtl.nim
popd &&

# build tools
pushd tools &&
nim c -d:release nimgrep.nim
popd &&

# build nimsuggest
nim c -d:release nimsuggest/nimsuggest.nim &&

prepare_install &&

./koch install $SOURCE_DIRECTORY &&

install -d /usr/lib/nim &&
cp -a nim/lib/* /usr/lib/nim &&
cp -a nim/compiler /usr/lib/nim &&
install -Dm 644 compiler.nimble /usr/lib/nim/compiler &&
install -m 755 nim/lib/libnimrtl.so /usr/lib/libnimrtl.so &&

# fix a bug related to the doc2 command
ln -sf /usr/share/nim/doc /usr/lib/nim/doc &&

install -Dm 644 nim/config/* -t /etc &&
install -Dm 755 nim/bin/* tools/nimgrep nimsuggest/nimsuggest -t /usr/bin &&

# fix the unusual placement of header files
install -d /usr/include &&
cp -a nim/lib/*.h /usr/include &&

install -d /usr/share/nim/doc &&
cp -a examples web doc/* /usr/share/nim/doc
