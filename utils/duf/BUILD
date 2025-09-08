go build \
    -trimpath \
    -buildmode=pie \
    -mod=readonly \
    -modcacherw \
    -ldflags "-X main.Version=$VERSION -linkmode external -extldflags \"${LDFLAGS}\"" \
    -o "$NODULE" . &&

go clean -modcache &&

prepare_install &&

install -Dm755 "$MODULE" /usr/bin/ &&
install -Dm644 duf.1 /usr/share/man/man1/
