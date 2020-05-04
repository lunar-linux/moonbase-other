bad_flags "-z relro -z now"
export GOPATH=$SOURCE_DIRECTORY
export CFLAGS="$CFLAGS -Wl,-z,relro -Wl,-z,now"
export EXTRA_FLAGS="-gcflags all=-trimpath=${PWD} -asmflags all=-trimpath=${PWD}"
export EXTRA_LDFLAGS="-extldflags ${LDFLAGS}"
export BUILDTAGS="seccomp"

cd src/github.com/opencontainers/runc &&
make runc man &&
prepare_install &&
install -Dm755 runc /usr/bin/runc &&
install -Dm644 contrib/completions/bash/runc /usr/share/bash-completion/completions/runc &&
install -d /usr/share/man/man8 &&
install -m644 man/man8/*.8 /usr/share/man/man8
