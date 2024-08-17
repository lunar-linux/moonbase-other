export CGO_CPPFLAGS="${CPPFLAGS}"
export CGO_CFLAGS="${CFLAGS}"
export CGO_CXXFLAGS="${CXXFLAGS}"
export CGO_LDFLAGS="${LDFLAGS}"
export GOPROXY=https://proxy.golang.org

mkdir -p build &&

CGO_ENABLED="1" go build -o build/wakatime-cli \
           -trimpath \
           -buildmode=pie \
           -mod=readonly \
           -modcacherw \
           -tags release \
           -ldflags "-linkmode external -extldflags '${LDFLAGS}'" &&

strip $STRIP_BINARIES build/wakatime-cli &&

prepare_install &&

install -Dm755 build/wakatime-cli /usr/bin/wakatime &&
ln -s /usr/bin/wakatime /usr/bin/wakatime-cli
