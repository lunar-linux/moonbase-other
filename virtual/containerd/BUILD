export GOPATH=$SOURCE_DIRECTORY
export GOFLAGS="-trimpath -mod=readonly -modcacherw"
export GO111MODULE=off

cd src/github.com/containerd/containerd &&

make VERSION=v$VERSION REVISION=
prepare_install &&
make install DESTDIR=/usr &&

install -Dm644 containerd.service /usr/lib/systemd/system/containerd.service
