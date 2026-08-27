export PATH=$SOURCE_DIRECTORY/bin:$PATH &&

# Use the installed compiler only when both the current stdlib layout and
# the current global configuration are present. Otherwise bootstrap from C.
if module_installed nim &&
   [ -x /usr/bin/nim ] &&
   [ -f /usr/lib/nim/lib/system.nim ] &&
   [ -f /etc/nim/nim.cfg ]; then
  /usr/bin/nim c --noNimblePath --skipUserCfg --skipParentCfg --hints:off koch &&
  ./koch boot -d:release --skipUserCfg --skipParentCfg --hints:off
else
  sh build_all.sh
fi &&

# building libs
cd lib &&
nim c --app:lib -d:createNimRtl -d:release nimrtl.nim &&
cd ../ &&

./koch nimble &&
./koch tools &&

prepare_install &&

install -m 755 lib/libnimrtl.so /usr/lib/ &&
rm -f lib/libnimrtl.so &&

rm -fR /usr/lib/nim &&
install -d /usr/lib/nim/lib &&
cp -r lib/* /usr/lib/nim/lib/ &&

cp -a compiler /usr/lib/nim/ &&
install -Dm 644 nim.nimble /usr/lib/nim/compiler/ &&

# Nim 2.x global configuration lives under /etc/nim.
install -d /etc/nim &&
install -m 644 config/nim*.cfg /etc/nim/ &&

install -Dm 755 bin/* -t /usr/bin/ &&

# fix the unusual placement of header files
install -d /usr/include &&
cp -a lib/*.h /usr/include/ &&
rm -f /usr/lib/nim/lib/*.h &&

install -d /usr/share/nim &&

# fix a bug related to the doc2 command
rm -f /usr/lib/nim/doc &&

# bash completions
if module_installed bash-completion; then
  for comp in tools/*.bash-completion; do
    install -Dm 644 "$comp" "/usr/share/bash-completion/completions/$(basename "${comp/.bash-completion}")"
  done
fi &&

# zsh completions
if module_installed zsh; then
  for comp in tools/*.zsh-completion; do
    install -Dm 644 "$comp" "/usr/share/zsh/site-functions/_$(basename "${comp/.zsh-completion}")"
  done
fi
