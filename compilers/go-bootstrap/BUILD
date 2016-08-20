export GOOS=linux
export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOPATH=$BUILD_DIRECTORY
export GOROOT_FINAL=/usr/lib/go1.4

# Disable compressed sections or go 1.4 will fail to build with binutils >= 2.26
export CGO_CFLAGS+=" -Wa,--compress-debug-sections=none"

cd src &&
bash make.bash &&

prepare_install &&

cd $SOURCE_DIRECTORY &&
mkdir -p /usr/lib/go1.4/bin &&
cp -a bin/* /usr/lib/go1.4/bin/ &&
cp -a {src,lib,pkg} /usr/lib/go1.4/ &&
chmod -R +x /usr/lib/go1.4/pkg/tool
