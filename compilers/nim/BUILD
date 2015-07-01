if ! ( ( module_installed nim ) && [ "$USE_BINARY" = "n" ] ); then
   ## clone the bootstrap version of the compiler
   rm build/empty.txt && rmdir build &&
   git clone --depth=1 git://github.com/nimrod-code/csources build &&

   ## build it
   cd build &&
   sh ./build.sh &&
   cd ../ &&

   ./bin/nim c koch
else
   nim c koch
fi &&

./koch boot -d:release -d:useGnuReadline &&

export PATH="$SOURCE_DIRECTORY/bin:$PATH" &&

cd lib &&
nim c --app:lib -d:createNimRtl -d:release nimrtl.nim &&

cd ../tools &&
nim c -d:release nimgrep.nim &&

## install it
prepare_install &&
mkdir -p "/usr/share/nim" "/usr/lib/nim" &&
cd $SOURCE_DIRECTORY &&

./koch install "/usr/bin" &&

cp -fR doc examples web /usr/share/nim/ &&
cp lib/cycle.h /usr/lib/nim/ &&
install -m644 lib/libnimrtl.so /usr/lib/libnimrtl.so &&
install -m755 tools/nimgrep /usr/bin/ &&
ln -sf /usr/bin/nim /usr/bin/nimrod
