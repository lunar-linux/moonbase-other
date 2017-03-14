## build it
pushd src &&
nim c -d:release nimble.nim &&

prepare_install &&

## install it
install -Dm755 nimble /usr/bin/nimble &&
popd &&

install -Dm 644 *.markdown -t /usr/share/doc/nimble &&
install -Dm 644 nimble.bash-completion /usr/share/bash-completion/completions/nimble &&

# Nimble looks for nimscriptapi.nim in /usr/bin/nimblepkg/, of all places.
mkdir -p /usr/share/$MODULE &&
cp -r src/nimblepkg/* /usr/share/$MODULE/ &&
ln -sf /usr/share/$MODULE /usr/bin/nimblepkg
