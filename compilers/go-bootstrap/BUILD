BOOT_VER=$(lvu version go-bootstrap|cut -d"." -f2)
export GOOS=linux
export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOPATH=$BUILD_DIRECTORY
export GOROOT_FINAL=/usr/lib/go1.$BOOT_VER

case "$(arch)" in
   x86_64) export GOARCH=amd64 ;;
   i686)   export GOARCH=386 ;;
esac &&

# Disable compressed sections or go 1.4 will fail to build with binutils >= 2.26
export CGO_CFLAGS+=" -Wa,--compress-debug-sections=none"

cd src &&
bash --verbose make.bash &&

prepare_install &&

cd $SOURCE_DIRECTORY &&
mkdir -p /usr/lib/go1.$BOOT_VER/bin &&
cp -a bin/* /usr/lib/go1.$BOOT_VER/bin/ &&
cp -a {src,lib,pkg} /usr/lib/go1.$BOOT_VER/ &&
chmod -R +x /usr/lib/go1.$BOOT_VER/pkg/tool
