export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw"
export CGO_LDFLAGS="${LDFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"

./build_linux.sh &&

prepare_install &&

install -Dm755 bin/* -t /usr/lib/cni/ &&
install -dm755 /etc/cni/net.d/ &&
install -Dm644 plugins/ipam/dhcp/systemd/* -t /usr/lib/systemd/system/
