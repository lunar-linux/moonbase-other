export CGO_CPPFLAGS="-D_FORTIFY_SOURCE=2"
export CGO_LDFLAGS="-Wl,-z,relro,-z,now"
export EXTRA_FLAGS="-gcflags all=-trimpath=${PWD} -asmflags all=-trimpath=${PWD}"
export BUILDTAGS="seccomp"

cd src/github.com/opencontainers/runc &&
make runc man &&

prepare_install &&

install -Dm755 runc /usr/bin/runc &&
install -Dm644 contrib/completions/bash/runc /usr/share/bash-completion/completions/runc &&
install -d /usr/share/man/man8 &&
install -m644 man/man8/*.8 /usr/share/man/man8
