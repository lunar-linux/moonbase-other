export PATH=$SOURCE_DIRECTORY/bin:$PATH

# building nim
sh build_all.sh

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
#cp -a doc examples web /usr/share/nim &&
cp -a doc examples /usr/share/nim &&

# fix a bug related to the doc2 command
rm -f /usr/lib/nim/doc &&
ln -sf /usr/share/nim/doc /usr/lib/nim/doc &&

# bash completions
if module_installed bash-completion; then
   for comp in tools/*.bash-completion; do
       install -Dm 644 "${comp}" "/usr/share/bash-completion/completions/$(basename "${comp/.bash-completion}")"
  done
fi &&

# zsh completions
if module_installed zsh; then
   for comp in tools/*.zsh-completion; do
       install -Dm 644 "${comp}" "/usr/share/zsh/site-functions/_$(basename "${comp/.zsh-completion}")"
  done
fi
