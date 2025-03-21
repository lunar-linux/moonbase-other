export GOPROXY=https://proxy.golang.org &&
go get -v github.com/zquestz/s &&

make &&

prepare_install &&

install -Dm 775 ${MODULE} /usr/bin/
