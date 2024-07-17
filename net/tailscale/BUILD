export GOPROXY=https://proxy.golang.org
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw"

GO_LDFLAGS="-linkmode=external"
for cmd in ./cmd/tailscale ./cmd/tailscaled; do
   go build -v -tags xversion -ldflags "$GO_LDFLAGS" "$cmd"
done &&

prepare_install &&

install -Dm755 tailscale tailscaled -t /usr/bin &&
install -Dm644 cmd/tailscaled/tailscaled.defaults /etc/default/tailscaled
