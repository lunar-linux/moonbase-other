export GOPROXY=https://proxy.golang.org
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -mod=readonly -modcacherw"

sed -i "s/sbin/bin/g" Makefile &&
make &&

prepare_install &&

mkdir -p /etc/ipp-usb

install -Dm755 $MODULE /usr/bin/ &&
install -Dm644 ipp-usb.conf /etc/ipp-usb/ &&
install -Dm644 systemd-udev/71-ipp-usb.rules /usr/lib/udev/rules.d/ &&
install -Dm644 systemd-udev/ipp-usb.service /usr/lib/systemd/system/ &&
install -Dm644 ipp-usb.8 /usr/share/man/man8/ &&
install -Dm644 ipp-usb-quirks/* -t /usr//share/ipp-usb/quirks
