export CGO_ENABLED=0
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw"

# Get version information for ldflags
PKG="github.com/docker/buildx"
REVISION=$(git rev-parse --short HEAD 2>/dev/null || echo "unknown")

# Build the binary with version information embedded
go build \
  -ldflags "-X ${PKG}/version.Version=${VERSION} -X ${PKG}/version.Revision=${REVISION} -X ${PKG}/version.Package=${PKG}" \
  -o bin/docker-buildx \
  ./cmd/buildx &&

prepare_install &&

# Install as standalone binary
install -Dm755 bin/docker-buildx /usr/bin/docker-buildx &&

# Install as Docker CLI plugin
install -Dm755 bin/docker-buildx /usr/libexec/docker/cli-plugins/docker-buildx
