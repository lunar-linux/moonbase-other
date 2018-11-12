export GOPATH=$SOURCE_DIRECTORY GOROOT_FINAL=/usr/bin
cd $SOURCE_DIRECTORY/src/github.com/$MODULE/$MODULE &&
make installdeps &&
go build cmd/$MODULE/${MODULE}.go &&
prepare_install &&
install -Dm755 $SOURCE_DIRECTORY/src/github.com/$MODULE/$MODULE/$MODULE /usr/bin/$MODULE
