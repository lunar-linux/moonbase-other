export GOPROXY=https://proxy.golang.org
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw"

GO_LDFLAGS="-linkmode=external"
go build -v -tags xversion -ldflags "$GO_LDFLAGS" "$cmd" &&

prepare_install &&

mv superfile spf &&
install -Dm755 spf -t /usr/bin
