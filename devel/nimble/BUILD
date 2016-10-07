## build it
cd src &&
nim c -d:release nimble.nim &&

## install it
prepare_install &&
install -Dm755 nimble /usr/bin/nimble &&

# Nimble looks for nimscriptapi.nim in /usr/bin/nimblepkg/, of all places.
cp -r nimblepkg /usr/share/$MODULE/ &&
ln -s /usr/share/$MODULE /usr/bin/nimblepkg
