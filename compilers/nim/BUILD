export PATH=$SOURCE_DIRECTORY/bin:$PATH &&

# Always bootstrap using the compiler built from this exact source tree.
# Do not invoke an installed /usr/bin/nim (which may select /usr/lib/nim).
# build_all.sh also builds the tools, so there is no separate koch tools pass.
sh build_all.sh &&

# building libs
cd lib &&
nim c --app:lib -d:createNimRtl -d:release nimrtl.nim &&
cd ../ &&

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

# Install host tools only; exclude bin/empty.txt, Windows .bat files, and
# the temporary bin/nim_csources_<hash> C-bootstrap compiler.
install -Dm 755 \
  bin/atlas bin/nifler bin/nifmake bin/nim bin/nim-gdb bin/nim_dbg \
  bin/nimble bin/nimgrep bin/nimpretty bin/nimsuggest bin/testament \
  -t /usr/bin/ &&

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
