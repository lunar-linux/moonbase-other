export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw"

# Build the binary using make
make &&

prepare_install &&

# Install as standalone binary (backward compatible)
install -Dm755 bin/build/docker-compose /usr/bin/docker-compose &&

# Install as Docker CLI plugin (modern approach)
install -Dm755 bin/build/docker-compose /usr/libexec/docker/cli-plugins/docker-compose
