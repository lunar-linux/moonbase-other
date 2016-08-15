export GOPATH=$(readlink -f .)
repo=src/github.com/cpuguy83
mkdir -p $repo &&
ln -sf $SOURCE_DIRECTORY $repo/go-md2man &&
go get ./... || true &&
go build -v -o go-md2man github.com/cpuguy83/go-md2man &&
./go-md2man -in=go-md2man.1.md -out=go-md2man.1 &&
prepare_install &&
install -Dm0755 go-md2man /usr/bin/go-md2man &&
install -Dm0644 go-md2man.1 /usr/share/man/man1/go-md2man.1
