export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOROOT_FINAL=/usr/lib/go1.4
export GOPATH=$BUILD_DIRECTORY
export GOOS=linux

cd src &&
bash make.bash &&

prepare_install &&

cd $SOURCE_DIRECTORY &&
mkdir -p /usr/lib/go1.4/bin &&
cp -a bin/* /usr/lib/go1.4/bin/ &&
cp -a {src,lib,pkg} /usr/lib/go1.4/ &&
chmod -R +x /usr/lib/go1.4/pkg/tool
