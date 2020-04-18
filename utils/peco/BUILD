export GOROOT_FINAL=/usr/bin  GO111MODULE=on

go mod download &&
go build -o "out/${MODULE}" "cmd/${MODULE}/${MODULE}.go" &&

prepare_install &&

install -Dm755 "out/${MODULE}" /usr/bin/
