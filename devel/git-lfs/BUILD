export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -modcacherw -ldflags=-linkmode=external"

go mod vendor &&
go generate ./commands &&
go build . &&
make &&

prepare_install
install -Dm755 git-lfs /usr/bin/git-lfs
