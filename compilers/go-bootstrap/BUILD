export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOROOT_FINAL=/usr/lib/go
export GOPATH=$BUILD_DIRECTORY
export GOOS=linux

cd src &&
bash make.bash &&

case "$(arch)" in
  x86_64)
    export GOARCH=amd64
    ;;
  i686)
    export GOARCH=386
    ;;
esac &&
bash make.bash --no-clean &&

$GOROOT/bin/go get -d golang.org/x/tools/cmd/godoc &&
$GOROOT/bin/go build -o $SOURCE_DIRECTORY/godoc golang.org/x/tools/cmd/godoc &&
for i in vet cover; do
  $GOROOT/bin/go get -d golang.org/x/tools/cmd/${i} &&
  $GOROOT/bin/go build -o $GOROOT/pkg/tool/${GOOS}_${GOARCH}/${i} golang.org/x/tools/cmd/${i}
done &&

prepare_install &&

cd $SOURCE_DIRECTORY &&
mkdir -p /usr/lib/go &&

cp -a bin/* /usr/bin/    &&
cp -a src   /usr/lib/go/ &&
cp -a lib   /usr/lib/go/ &&
cp -a pkg   /usr/lib/go/ &&
cp -a include /usr/lib/go/ &&

ln -sf /usr/bin /usr/lib/go/bin &&

install -Dm0644 src/Make.* /usr/lib/go/src/

# Remove object files from target src dir
#find /usr/lib/go/src/ -type f -name '*.[ao]' -delete
