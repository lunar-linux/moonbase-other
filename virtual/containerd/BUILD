export GOPATH="$SOURCE_DIRECTORY"

mkdir -p src/github.com/docker &&
ln -sf $SOURCE_DIRECTORY src/github.com/docker/containerd
cd src/github.com/docker/containerd &&
LDFLAGS= make &&
prepare_install &&
cd bin &&
for f in *; do
  install -Dm755 $f /usr/bin/$f
done
