export GOPROXY=https://proxy.golang.org
export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw" &&

cd cmd/shfmt &&

go build . &&

prepare_install &&

install -Dm755 "shfmt" "/usr/bin/"
