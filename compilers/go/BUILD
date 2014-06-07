export GOROOT=$SOURCE_DIRECTORY
export GOBIN=$GOROOT/bin
export GOROOT_FINAL=/usr/lib/go
export GOPATH=$BUILD_DIRECTORY
export GO386=387
export GOOS=linux

cd src &&
bash make.bash &&

# Cross compilation support
for i in amd64 386; do
  export GOARCH=$i
  bash make.bash --no-clean
done &&

case "$(arch)" in
  x86_64)
    export GOARCH=amd64
    ;;
  i686)
    export GOARCH=386
    ;;
esac &&

$GOROOT/bin/go get -d code.google.com/p/go.tools/cmd/godoc &&
$GOROOT/bin/go build -o $SOURCE_DIRECTORY/godoc code.google.com/p/go.tools/cmd/godoc &&
for i in vet cover; do
  $GOROOT/bin/go get -d code.google.com/p/go.tools/cmd/${i} &&
  $GOROOT/bin/go build -o $GOROOT/pkg/tool/${GOOS}_${GOARCH}/${i} code.google.com/p/go.tools/cmd/${i}
done &&

# Clean up before install
#find $SOURCE_DIRECTORY/ -type f -name '*.[ao]' | xargs rm -f &&
find $SOURCE_DIRECTORY/src/pkg -type f -executable | xargs rm -f &&

prepare_install &&

cd $SOURCE_DIRECTORY &&
install -Dm0755 godoc /usr/bin/godoc &&
install -Dm0644 misc/bash/go /usr/share/bash-completion/completions/go &&
mkdir -p /usr/{share/go,lib/go/src,lib/go/site/src} &&
cp -r doc misc /usr/share/go/ &&
cp -a bin/* /usr/bin/ &&
cp -a pkg /usr/lib/go &&
cp -a src/pkg /usr/lib/go/src/ &&
cp -a src/cmd /usr/lib/go/src/ &&
cp -a src/lib9 /usr/lib/go/src/ &&
cp -a lib /usr/lib/go/ &&
cp -a include /usr/lib/go/ &&
install -Dm0644 src/Make.* /usr/lib/go/src/ &&
ln -sf /usr/bin /usr/lib/go/bin
