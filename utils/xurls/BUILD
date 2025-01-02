export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -ldflags=-linkmode=external -mod=readonly -modcacherw"
export GOPROXY=https://proxy.golang.org

GO111MODULES=on go build -ldflags='-w -s' ./cmd/${MODULE} &&

prepare_install &&

install -Dm755 "${MODULE}" /usr/bin/
