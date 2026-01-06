export GO111MODULE=on
export GOPROXY=https://proxy.golang.org
export GOSUMDB=sum.golang.org
export CGO_ENABLED=1
export CGO_LDFLAGS="${LDFLAGS}"
export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export GOFLAGS="-buildmode=pie -trimpath -modcacherw"

make alloy &&

prepare_install &&

install -Dm755 build/alloy /usr/bin/alloy &&
install -dm750 -o alloy -g alloy /var/lib/alloy &&
install -dm750 -o alloy -g alloy /var/lib/alloy/data &&
install -dm755 /etc/alloy &&

if [ ! -f /etc/alloy/config.alloy ]; then
  install -Dm644 $SCRIPT_DIRECTORY/config.alloy /etc/alloy/config.alloy
fi
