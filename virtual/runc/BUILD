export GOPROXY=https://proxy.golang.org
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export GOFLAGS="-trimpath -mod=readonly -modcacherw"
export BUILDTAGS="seccomp"

cd src/github.com/opencontainers/runc &&
make runc man &&

prepare_install &&

install -Dm755 runc /usr/bin/runc &&
install -Dm644 contrib/completions/bash/runc /usr/share/bash-completion/completions/runc &&
install -d /usr/share/man/man8 &&
install -m644 man/man8/*.8 /usr/share/man/man8
