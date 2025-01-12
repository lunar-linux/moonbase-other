go build \
    -trimpath \
    -buildmode=pie \
    -mod=readonly \
    -modcacherw \
    -ldflags "-X main.Version=${VERSION} -linkmode external -extldflags \"${LDFLAGS}\"" \
    -o "$MODULE" . &&

./$MODULE man > ${MODULE}.1 &&

prepare_install &&

install -Dm755 "$MODULE" /usr/bin/ &&
install -Dm644 "${MODULE}.1" /usr/share/man/man1/
