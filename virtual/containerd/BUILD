export GOPATH=$SOURCE_DIRECTORY
cd src/github.com/containerd/containerd &&

make VERSION=v$VERSION.m REVISION=$_COMMIT.m
prepare_install &&
make install DESTDIR=/usr &&

install -Dm644 containerd.service /usr/lib/systemd/system/containerd.service
