export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOROOT_FINAL=/usr/lib/go
export GOPATH=$BUILD_DIRECTORY
export GO386=387
export GOOS=linux

cd src &&
bash make.bash &&

# Cross compilation support if needed have to be activated from here
#for i in amd64 386; do
#  export GOARCH=$i
#  bash make.bash --no-clean
#done &&

case "$(arch)" in
  x86_64)
    export GOARCH=amd64
    ;;
  i686)
    export GOARCH=386
    ;;
esac &&
bash make.bash --no-clean &&

cd $SOURCE_DIRECTORY &&
$GOROOT/bin/go get -d golang.org/x/tools/cmd/godoc &&
$GOROOT/bin/go build -o $SOURCE_DIRECTORY/godoc golang.org/x/tools/cmd/godoc &&
for i in vet cover; do
  $GOROOT/bin/go get -d golang.org/x/tools/cmd/${i} &&
  $GOROOT/bin/go build -o $GOROOT/pkg/tool/${GOOS}_${GOARCH}/${i} golang.org/x/tools/cmd/${i}
done &&

# Clean up before install
#find $SOURCE_DIRECTORY/ -type f -name '*.[ao]' -delete &&
#find $SOURCE_DIRECTORY/ -type f -executable -delete &&

prepare_install &&

cd $SOURCE_DIRECTORY &&
install -Dm0755 godoc /usr/bin/godoc &&
mkdir -p /usr/{share/go,lib/go/src,lib/go/site/src} &&
cp -r doc misc /usr/share/go/ &&
cp -a bin/* /usr/bin/  &&
cp -a pkg /usr/lib/go/ &&
cp -a src /usr/lib/go/ &&
cp -a src/cmd /usr/lib/go/src/ &&
cp -a src/lib9 /usr/lib/go/src/ &&
cp -a lib /usr/lib/go/ &&
cp -a include /usr/lib/go/ &&
install -Dm0644 src/Make.* /usr/lib/go/src/ &&
ln -sf /usr/bin /usr/lib/go/bin &&

# Headers for C modules
install -Dm644 src/runtime/runtime.h "/usr/lib/go/src/runtime/runtime.h" &&
install -Dm644 src/runtime/cgocall.h "/usr/lib/go/src/runtime/cgocall.h" &&

# For gox
install -Dm755 src/make.bash "/usr/lib/go/src/make.bash" &&
install -Dm755 src/run.bash "/usr/lib/go/src/run.bash" &&
cp -r misc/ "/usr/lib/go/" &&

# For godoc
install -Dm644 favicon.ico "/usr/lib/go/favicon.ico"
